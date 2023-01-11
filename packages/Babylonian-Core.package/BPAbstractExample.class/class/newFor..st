instance creation
newFor: compiledMethod
	
	^ self new
		method: compiledMethod;
		initializeFromMethod: compiledMethod;
		yourself