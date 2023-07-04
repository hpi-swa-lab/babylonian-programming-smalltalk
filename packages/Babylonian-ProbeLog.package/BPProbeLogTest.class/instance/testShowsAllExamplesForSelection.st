tests
testShowsAllExamplesForSelection

	self assert: BPExamples value examples size + 1 equals: BPProbeLog examplesToDisplayForSelection size.