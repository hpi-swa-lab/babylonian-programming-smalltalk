private
exampleForEvaluation
	
	^ self compiledMethod bpActiveExamples
		ifEmpty: [nil]
		ifNotEmptyDo: [:examples | examples detect: [:e | e canBeUsedForDoIts] ifNone: [nil]]