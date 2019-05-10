tests
testExamplesKnowTheirArguments

	| method |
	method := BPTestExamplesClass>>#binarySearchIn:theElement:.
	self assert: #((1 2 3) 2) equals: method bpExamples first arguments