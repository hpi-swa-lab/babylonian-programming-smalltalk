*Babylonian-UI-evaluating
doItReceiver

	^ self exampleForEvaluation 
		ifNil: [self selectedClass]
		ifNotNil: [:e |
			(self exampleMorphFor: e) ifNotNil: [:m | m flash].
			e prepareRunState receiver]