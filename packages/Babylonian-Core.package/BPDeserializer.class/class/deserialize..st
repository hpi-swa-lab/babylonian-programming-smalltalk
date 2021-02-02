building
deserialize: anExample

	| newExample |
	
	newExample := self deserializeTest: anExample testRef.
	anExample argumentScripts: newExample argumentScripts.
	anExample receiverConstructor: newExample receiverConstructor.
	anExample expectedResult: newExample expectedResult.