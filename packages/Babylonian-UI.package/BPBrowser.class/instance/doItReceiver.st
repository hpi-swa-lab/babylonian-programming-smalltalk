accessing
doItReceiver
	
	^ self exampleForEvaluation 
		ifNil: [super doItReceiver]
		ifNotNil: [:e |
			(self exampleMorphFor: e) ifNotNil: [:m | m flash].
			e newReceiver]