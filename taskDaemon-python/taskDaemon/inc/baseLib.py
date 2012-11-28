#!/usr/bin/python
import ConfigParser
import logging as _logObj

class baseLib:
    conf = {}#notice this is classattribute
    def __init__( self, confFilePath ):
        self.tmpConfObj=ConfigParser.ConfigParser()
        self.tmpConfObj.read( confFilePath )
        baseLib.conf = {}
        self.convertListToDict()
        print baseLib.conf, baseLib.conf['reciveCMD']['host']
        _logObj.basicConfig( filename= baseLib.conf[ 'log' ][ 'access' ],filemode='a+',level=_logObj.INFO, format='%(asctime)s %(levelname)-5.5s [%(name)s] %(message)s %(filename)s %(module)s %(lineno)d', datefmt='%Y-%m-%d %H:%M:%S' )
    def convertListToDict( self ):
        sectionsList = self.tmpConfObj.sections()
        for val1 in sectionsList:
            baseLib.conf[ val1 ] = dict( self.tmpConfObj.items( val1 ) )
    def writeLog( self,msg ):
        _logObj.info( msg )