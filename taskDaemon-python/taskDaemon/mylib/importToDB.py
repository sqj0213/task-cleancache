#coding=utf-8
import MySQLdb,json,os,select
from inc import baseLib#notice package name and class name
class importToDB( baseLib.baseLib ):
    def __init__( self, confFilePath ):
        baseLib.baseLib.__init__( self, confFilePath )
        print self.conf
        self.sqlTmplStr = self.conf['mysql']['sqltmplstr']
        self.dbObj = MySQLdb.connect( host=self.conf['mysql']['host'], user=self.conf['mysql']['user'], passwd=self.conf['mysql']['passwd'], db=self.conf['mysql']['db'], port=int( self.conf['mysql']['port'] ) )
        self.sqlObj = self.dbObj.cursor()
        self.pipeObj = os.open( self.conf['importToDB']['pipename'],  os.O_NONBLOCK | os.O_RDONLY)

    def run(self):
        while( True ):
            if not select.select([self.pipeObj], [], [], 1)[0]:
                print('waiting...')
            else:
                got = os.read( self.pipeObj,1024).decode().rstrip()
                if not got:
                    os.close( self.pipeObj )
                    self.pipeObj = os.open( self.conf['importToDB']['pipename'],  os.O_NONBLOCK | os.O_RDONLY)
                else:
                    print got
                    self.writeDB( got )
    def writeDB(self, jsonMsg):
        self.writeLog( jsonMsg )
        try:
                retData = json.loads( jsonMsg )
        except (TypeError, ValueError), err:
                self.writeLog( err )
                return
        tmpSql = self.sqlTmplStr
        sqlStr = tmpSql.replace( "__RETCODE__", retData['retCode'] )
        sqlStr = sqlStr.replace( "__RETMSG__", retData['retMsg'] )
        sqlStr = sqlStr.replace( "__RETDATA__", retData['data'] )
        sqlStr = sqlStr.replace( "__CMDSN__", retData['cmdSN'] )
        sqlStr = sqlStr.replace( "__IP__", retData['ip'] )
        sqlStr = sqlStr.replace( "__RUNTIME__", str(retData['runTime']) )
        self.writeLog( sqlStr )
        self.sqlObj.execute( sqlStr )
        self.dbObj.commit()
    def close(self):
        self.sqlObj.close()
        self.dbObj.close()
