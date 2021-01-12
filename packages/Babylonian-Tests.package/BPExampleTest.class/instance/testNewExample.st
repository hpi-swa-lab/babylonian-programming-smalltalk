tests
testNewExample
	
	| example |
	example := method bpNewExampleFrom: BPMethodExample.
	
	self 
		assert: example method = (BPTestExamplesClass>>#binarySearchIn:theElement:) compiledMethod;
		assert: example argumentScripts size = 2.