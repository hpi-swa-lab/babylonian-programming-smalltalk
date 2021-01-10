tests
testBuildMethodBody

	self assert: 'self assert: ((BPTestExamplesClass one) addAndLog: 20) equals: (21)' 
	equals: (BPExampleToMethodTest forExample: method bpExamples first) buildMethodBody