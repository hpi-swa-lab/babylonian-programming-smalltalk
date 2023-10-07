as yet unclassified
testDeterminesCorrectIntervalForExistingVariableIgnoresSpaceInSelection

	browser selectClassNamed: #BPTestExamplesClass.
	self assert: (69 to: 71) equals: (browser determineIntervalToAnnotateFor: (BPInstanceVariableProbe new variableName: 'foo') in: (68 to: 71))