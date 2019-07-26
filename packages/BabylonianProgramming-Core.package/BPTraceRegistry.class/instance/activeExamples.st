accessing
activeExamples

	^ self keys 
		collect: [:e | e actualExample]
		thenSelect: [:e | e isActive]