tests
testExampleWithTooManyArguments
	
	| example |
	example := (BPTestExamplesClass>>#methodWithTooLargeExample:) bpExamples first. "there is only one"
	self assert: 30 equals: example execute.