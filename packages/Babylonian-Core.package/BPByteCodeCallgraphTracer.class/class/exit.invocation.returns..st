tracing
exit: aString invocation: aNumber returns: aBoolean
	
	
	self value ifNotNil: [:t | t exit: aString invocation: aNumber returns: aBoolean]