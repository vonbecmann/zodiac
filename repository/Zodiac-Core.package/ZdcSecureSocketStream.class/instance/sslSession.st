accessing
sslSession
	"Return the underlying ZdcAbstractSSLSession object 
	that we use for encryption and decryption, 
	as well as connection setup handshaking, connect and accept"
	
	sslSession ifNil: [ sslSession := self sslSessionClass new ].
	^ sslSession