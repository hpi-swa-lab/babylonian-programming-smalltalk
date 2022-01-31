tests
testShowsAllExamplesForSelection

	self assert: BPExamples value examples size + 1 equals: printbugger examplesToDisplayForSelection size.