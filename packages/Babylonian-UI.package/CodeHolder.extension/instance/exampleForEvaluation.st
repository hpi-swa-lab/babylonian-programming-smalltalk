*Babylonian-UI-private
exampleForEvaluation
	 
	^ (self compiledMethod ifNil: [^ nil]) bpActiveExamples
		ifEmpty: [nil]
		ifNotEmptyDo: [:examples | examples detect: [:e | e canBeUsedForDoIts] ifNone: [nil]]