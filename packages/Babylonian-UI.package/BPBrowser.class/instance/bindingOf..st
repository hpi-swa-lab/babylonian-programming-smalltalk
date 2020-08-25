binding
bindingOf: aString
	
	^ self exampleForEvaluation 
		ifNil: [super bindingOf: aString]
		ifNotNil: [:e |
			(self exampleMorphFor: e) ifNotNil: [:m | m flash].
			aString -> (e newArguments at: (e argumentNames indexOf: aString))]