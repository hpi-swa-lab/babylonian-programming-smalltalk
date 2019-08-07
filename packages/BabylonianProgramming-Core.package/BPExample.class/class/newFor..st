instance creation
newFor: compiledMethod

	^ self new
		method: compiledMethod;
		argumentScripts: ((1 to: compiledMethod numArgs) collect: [:i | '']);
		yourself