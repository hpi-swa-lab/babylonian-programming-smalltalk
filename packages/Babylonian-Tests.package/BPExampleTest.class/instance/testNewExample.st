tests
testNewExample

	| example |
	example := BPExample newFor: (BPTestExamplesClass>>#binarySearchIn:theElement:).
	self 
		assert: example method = (BPTestExamplesClass>>#binarySearchIn:theElement:);
		assert: example argumentScripts size = 2