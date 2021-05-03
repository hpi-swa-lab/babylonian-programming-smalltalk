tracing
enter: aString invocation: aNumber
	
	
	self value ifNotNil: [:t | t enter: aString invocation: aNumber]