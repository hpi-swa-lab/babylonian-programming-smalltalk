tracing
exit: aString invocation: aNumber returns: aBoolean
	
	events 
		nextPut: #exit;
		nextPut: aString;
		nextPut: aNumber;
		nextPut: aBoolean.