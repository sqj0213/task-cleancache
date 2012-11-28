#coding=utf-8
import redis,time
from inc import baseLib#notice package name and class name
import subprocess,os, json, time,syslog

class processCMD( baseLib.baseLib ):
    def __init__( self, configFilePath ):
        self.retData = dict()
        baseLib.baseLib.__init__( self, configFilePath )
        print baseLib.baseLib.conf
        self.redisObj = redis.Redis( host=baseLib.baseLib.conf['reciveCMD']['host'], port=int( baseLib.baseLib.conf['reciveCMD']['port'] ), db=int( baseLib.baseLib.conf['reciveCMD']['dbindex'] ) )
        self.ip = os.popen( "/sbin/ifconfig \"eth0\"|/bin/grep \"inet addr\"|/bin/cut -d:  -f2|/bin/cut -d\  -f 1" ).read()
        self.ip = self.ip.replace( "\n", "" )
        self.sendCMDListKey = self.conf['reciveCMD']['cmdprefixstr'] + self.ip
        self.syslogTagKey = self.conf['reciveCMD']['syslogtagkey']
        syslog.openlog( self.conf['reciveCMD']['syslogtagkey'], syslog.LOG_PID, syslog.LOG_LOCAL7 )

    def printSystemInfo(self):
        print "------------------system info begin------------------\n\n\n"
        print "start task process success!"
        print "ip:",self.ip
        print "redisHost:", self.conf['reciveCMD']['host']
        print "redisPort:", self.conf['reciveCMD']['port']
        print "redisDBIndex:", self.conf['reciveCMD']['dbindex']
        print "redis list key:", self.sendCMDListKey
        print "syslog tag:", self.conf['reciveCMD']['syslogtagkey']
        print "------------------system info end------------------\n\n\n"


    def processCMD( self ):
        self.printSystemInfo()
        print self.redisObj.info()
        while( 1 ):
            cmdData = self.redisObj.rpop( self.sendCMDListKey )
            if ( str(cmdData) != "None" ):
                nodeDecodeData = json.loads( cmdData )
                # {"cmdSN":"1351249022","cmdStr":"\/bin\/rm -f","para":["\/tmp\/aa.txt\r","\/tmp\/bb.txt\r","\/tmp\/cc.txt"]}
                self.writeLog( 'list('+self.sendCMDListKey+ ') recive data:' + cmdData )
                #self.redisObj.lpush( self.sendCMDListKey, cmdData )
                self.runCMD( nodeDecodeData )
            else:
                print "is null"
                self.writeLog( 'queue is null and sleep ' + self.conf['reciveCMD']['interval'] )
                #print type( nodeEncodeData )
                time.sleep( int( baseLib.baseLib.conf['reciveCMD']['interval'] ) )
                #print nodeDecodeData

    def runCMD( self, cmdData ):
        cmdSN = cmdData[ "cmdSN" ]
        cmdStr = cmdData[ "cmdStr" ]
        cmdPara = cmdData[ "para" ]
        cacheBasePath = self.conf['reciveCMD']['basefilepath']
        while( len( cmdPara ) > 0 ): 
            v = cmdPara.pop()
            if ( v ):
                v = v.replace( "\r", "" )
                v = v.replace( " ", "" )#删除空格
                v = v.replace( "..", "" )#删除点
				if ( cmdStr == "/bin/rm -f" ):
					cmdStr = cmdStr + " " + cacheBasePath+"/"+v
                else:
                    cmdStr = cmdStr + " " + v
            else:
                break
        p = subprocess.Popen( cmdStr, shell=True, stdout=subprocess.PIPE,stderr=subprocess.PIPE )
        stdout,stderr = p.communicate()
        self.retData['cmdSN'] = cmdSN
        self.retData['runTime'] = int(time.time())
        self.retData['ip'] = self.ip
        self.retData['retCode'] = str(p.returncode)
	if self.retData['retCode'] == '0':
	    self.retData['retCode'] = '1'
        if ( len( stderr ) == 0 ):
            self.retData['retMsg'] = 'success'
        else:
            self.retData['retMsg'] = stderr

        self.retData['data'] = stdout
        self.sendRetData()


    def sendRetData( self ):
        encodeRetData = json.dumps( self.retData )
        self.writeLog( 'write syslog complete!' + encodeRetData )
        syslog.syslog(  syslog.LOG_INFO, encodeRetData ) 
        self.retData = dict()#list[]dict{}
    def getRetData(self):
        return retData

            #self.redisObj.lpush( self.sendCMDListKey, cmdData )
           # if ( cmdData)
           # self.writeLog( "recive cmd:"+cmdData)
            #cmdSN =

