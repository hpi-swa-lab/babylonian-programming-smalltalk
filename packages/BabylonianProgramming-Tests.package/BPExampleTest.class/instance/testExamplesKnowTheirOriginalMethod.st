tests
testExamplesKnowTheirOriginalMethod

	| method |
	method := BPTestExamplesClass>>#binarySearchIn:theElement:.
	self assert: method baseMethod equals: method bpExamples first method