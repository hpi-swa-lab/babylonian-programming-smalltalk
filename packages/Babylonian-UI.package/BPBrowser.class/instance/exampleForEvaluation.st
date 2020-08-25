private
exampleForEvaluation

	^ self compiledMethod bpActiveExamples
		ifEmpty: [nil]
		ifNotEmptyDo: [:examples | examples first]