as yet unclassified
testGetExamplesForAMethod

	| method |
	method := BPTestExamplesClass>>#binarySearchIn:theElement:.
	self assert: 3 equals: method bpExamples size