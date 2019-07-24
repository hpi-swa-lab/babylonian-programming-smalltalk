accessing
exampleName: aString

	BPTraces value at: self uniqueIdentifier 
		ifPresent: [:value |
			BPTraces value removeKey: self uniqueIdentifier.
			exampleName := aString.	
			BPTraces value at: self uniqueIdentifier put: value]
		ifAbsent: [exampleName := aString]
	
	