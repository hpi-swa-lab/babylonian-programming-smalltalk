tracing
enter: aString invocation: aNumber
	
	| senderContext |
	events nextPut: #enter.
	events nextPut: aString.
	events nextPut: aNumber.
	senderContext := thisContext sender sender sender.
	events nextPut: 0"senderContext pc".
	events nextPut: 0"senderContext method".