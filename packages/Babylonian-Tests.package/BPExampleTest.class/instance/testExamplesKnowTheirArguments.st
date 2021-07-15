tests
testExamplesKnowTheirArguments
	
	| example |
	example := method bpExamples detect: [:e | e exampleName = 'basic'].
	self assert: #((3 1 2) 1) equals: example newArguments.