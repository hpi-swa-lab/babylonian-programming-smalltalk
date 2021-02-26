as yet unclassified
headersAt: something
	
	something == 'WWW-Authenticate' ifTrue: [^ #('Basic realm="HPI Kerberos Login"')].
	something == 'Proxy-Authenticate' ifTrue: [^  #()].