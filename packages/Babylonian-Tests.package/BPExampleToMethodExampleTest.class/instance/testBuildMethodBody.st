tests
testBuildMethodBody

	self assert: '(BPTestExamplesClass one) addAndLog: 94280292019202' 
	equals: (BPExampleToMethodExample forExample: method bpExamples second) buildMethodBody