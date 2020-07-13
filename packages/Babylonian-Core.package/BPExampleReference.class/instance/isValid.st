testing
isValid

	^ self methodReference isValid and: [	
		(self methodReference compiledMethod bpExamples 
			collect: [:e | e exampleName])
			includes: self exampleName]