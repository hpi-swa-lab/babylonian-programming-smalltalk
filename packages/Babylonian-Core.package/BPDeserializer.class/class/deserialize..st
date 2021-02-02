building
deserialize: anExample

	| newExample |
	
	newExample := self deserializeTest: anExample testRef.
	anExample exampleName: newExample exampleName.
	anExample argumentScripts: newExample argumentScripts.
	anExample receiverConstructor: newExample receiverConstructor.
	anExample expectedResult: newExample expectedResult.