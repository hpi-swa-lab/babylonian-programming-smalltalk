accessing
actualExample

	^ self methodReference compiledMethod bpExamples detect: [:e | e exampleName = self exampleName]