tracing
enter: aString invocation: aNumber
	
	events nextPut: #enter.
	events nextPut: aString.
	events nextPut: aNumber