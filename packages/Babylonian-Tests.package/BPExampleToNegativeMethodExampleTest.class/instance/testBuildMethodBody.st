tests
testBuildMethodBody

	self assert: 'self should: [(BPTestExamplesClass new) errorMethod: 0] raise: ZeroDivide' 
	equals: (BPExampleToNegativeMethodExample forExample: method bpExamples second) buildMethodBody