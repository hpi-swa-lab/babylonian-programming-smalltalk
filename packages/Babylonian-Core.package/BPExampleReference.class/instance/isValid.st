testing
isValid
	
	^ self methodReference isValid and: [	
		self methodReference compiledMethod bpExamples 
			anySatisfy: [:e | e exampleName = self exampleName]]