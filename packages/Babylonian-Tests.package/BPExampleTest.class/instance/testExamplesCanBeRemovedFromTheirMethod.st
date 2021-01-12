tests
testExamplesCanBeRemovedFromTheirMethod
	
	| example |
	example := method bpNewExampleFrom: BPMethodExample.
	method bpRemoveExample: example.
	self deny: (method bpExamples includes: example).