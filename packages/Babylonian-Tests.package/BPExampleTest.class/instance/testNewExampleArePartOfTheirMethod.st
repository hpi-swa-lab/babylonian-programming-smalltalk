tests
testNewExampleArePartOfTheirMethod
	
	| example |
	example := method bpNewExampleFrom: BPMethodExample.
	
	self assert: (method bpExamples includes: example).