as yet unclassified
testExamplesKnowTheirOriginalMethod

	| method |
	method := BPTestExamplesClass>>#binarySearchIn:theElement:.
	self assert: method equals: method bpExamples first method