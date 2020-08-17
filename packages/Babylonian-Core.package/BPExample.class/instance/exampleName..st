accessing
exampleName: aStringOrText

	BPTraces value at: self exampleReference 
		ifPresent: [:value |
			BPTraces value removeKey: self exampleReference ifAbsent: ["dont care"].
			exampleName := aStringOrText asString.	
			BPTraces value at: self exampleReference put: value]
		ifAbsent: [exampleName := aStringOrText asString]
	
	