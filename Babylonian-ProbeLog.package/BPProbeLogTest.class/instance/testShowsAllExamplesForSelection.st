tests
testShowsAllExamplesForSelection

	self assert: BPExamples value examples size + 1 equals: BPProbeLogColumnMorph examplesToDisplayForSelection size.