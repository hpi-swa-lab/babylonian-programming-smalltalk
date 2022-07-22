tests - script examples
testScriptExamplesCanAccessArgumentsFromTheSetup
	
	| example |
	example := (BPTestExamplesClass>>#methodWithScriptExamples) bpExamples detect: [:someExample |
		someExample exampleName = 'yetAnother'].
	self assert: #(1 2 3) equals: example execute.