tests
testMethodsReturnAnnotations
	
	| annotations |
	annotations := (BPTestExamplesClass>>#binarySearchIn:theElement:) bpAnnotations.
	self assert: 5 equals: annotations size.
	self assert: 6094846 equals: annotations last id.