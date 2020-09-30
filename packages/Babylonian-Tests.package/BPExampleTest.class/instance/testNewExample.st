tests
testNewExample

	| example |
	example := BPMethodExample newFor: (BPTestExamplesClass>>#binarySearchIn:theElement:).
	self 
		assert: example method = (BPTestExamplesClass>>#binarySearchIn:theElement:);
		assert: example argumentScripts size = 2