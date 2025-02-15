as yet unclassified
testDeterminesNoIntervalForExistingVariableButWrongSelection

	browser selectClassNamed: #BPTestExamplesClass.
	self assert: nil equals: (browser determineIntervalToAnnotateFor: (BPInstanceVariableProbe new variableName: 'foo') in: (66 to: 71))