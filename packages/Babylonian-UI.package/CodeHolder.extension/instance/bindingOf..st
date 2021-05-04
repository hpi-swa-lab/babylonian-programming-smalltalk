*Babylonian-UI-evaluating
bindingOf: aString
	
	^ self exampleForEvaluation 
		ifNil: [super bindingOf: aString]
		ifNotNil: [:e |
			(self exampleMorphFor: e) ifNotNil: [:m | m flash].
			e prepareRunState bindingOf: aString]