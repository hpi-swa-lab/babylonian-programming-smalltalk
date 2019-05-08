as yet unclassified
testExamplesKnowTheirName

	| method |
	method := BPTestExamplesClass>>#binarySearchIn:theElement:.
	self assert: 'basic' equals: method bpExamples first exampleName