tests
testBuildMethodBody

	self assert: 'self assert: (21) equals: ((BPTestExamplesClass one) addAndLog: 20)' 
	equals: (BPExampleToMethodTest forExample: method bpExamples first) buildMethodBody