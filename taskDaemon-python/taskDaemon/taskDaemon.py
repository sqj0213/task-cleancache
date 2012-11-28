import sys

def help( argv ):
    if len( sys.argv ) != 4 and len ( sys.argv ) != 3:
        print "1.start error: python taskDaemon.py ./conf/taskDaemon.ini processCMD"
        print "2.start error: python taskDaemon.py ./conf/taskDaemon.ini importToDB jsonData"
        exit(0)
    if ( len( sys.argv ) == 4 and len( sys.argv[3] ) == 0 ):
        print "3.start error: python taskDaemon.py ./conf/taskDaemon.ini importToDB jsonData"
        exit(0)
    if ( sys.argv[2] == 'importToDB' and len( sys.argv ) == 3 ) :
        print "4.start error: python taskDaemon.py ./conf/taskDaemon.ini importToDB jsonData"
        exit(0)
    return

help( sys.argv )

confFilePath = sys.argv[1]

if ( sys.argv[2] == "processCMD" ):
    from mylib import processCMD
    cmdObj = processCMD.processCMD( confFilePath )
    cmdObj.processCMD()
if ( sys.argv[2] == "importToDB" and len( sys.argv[3] ) > 0 ):
        from mylib import importToDB
        cmdObj = importToDB.importToDB( confFilePath )
        cmdObj.run(  )
        #cmdObj.writeDB( '{"ip": "172.16.1.155", "cmdSN": "1351249022", "data": "", "runTime": "17212342134", "retCode": "0", "retMsg": "success"}' )
