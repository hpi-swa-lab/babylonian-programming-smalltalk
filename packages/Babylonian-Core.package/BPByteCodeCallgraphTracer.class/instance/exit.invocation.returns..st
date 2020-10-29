tracing
exit: aString invocation: aNumber returns: aBoolean
	
	events nextPut: #exit.
	events nextPut: aString.
	events nextPut: aNumber.
	events nextPut: aBoolean