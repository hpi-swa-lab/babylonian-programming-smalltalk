accessing
actualExample

	^ actualExample ifNil: [
		actualExample := self methodReference compiledMethod bpExamples detect: [:anExample | anExample exampleName = self exampleName]]