import ConfigParser
import logging as _logObj

class baseLib:
	def __init(self,confFilePath):
		self.tmpConfObj = ConfigParser.ConfigParser()
		self.tmpConfObj.read( confFilePath )
		self.convertListToDict()
		self.logObj = _logObj.basicConfig( filename=self.conf[ 'log' ][ 'access' ],filemode='a+',level=logObj.INFO, format='%(asctime)s %(levelname)-5.5s [%(name)s] %(message)s %(filename)s %(module)s %(lineno)d', datefmt='%Y-%m-%d %H:%M:%S' )
	def convertListToDict( self ):
		sectionsList = self.tmpConfObj.sections()
		self.conf = {}
		for val1 in sectionsList:
			self.conf[ val1 ] = dict( self.tmpConfObj.items( val1 ) )
	def writeLog( self, msg ):
		self.logObj