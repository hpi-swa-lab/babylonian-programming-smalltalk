as yet unclassified
testDeterminesCorrectIntervalForExistingVariableAndPerfectSelection

	browser selectClassNamed: #BPTestExamplesClass.
	self assert: (69 to: 71) equals: (browser determineIntervalToAnnotateFor: (BPInstanceVariableProbe new variableName: 'foo') in: (69 to: 71))