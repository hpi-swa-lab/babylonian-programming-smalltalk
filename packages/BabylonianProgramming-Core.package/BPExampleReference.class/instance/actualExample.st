accessing
actualExample

	^ self methodReference compiledMethod bpExamples detect: [:e | e exampleName asString = self exampleName asString]