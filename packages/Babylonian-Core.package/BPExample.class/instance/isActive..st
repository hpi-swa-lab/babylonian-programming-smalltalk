accessing
isActive: aBoolean
	
	isActive := aBoolean.
	aBoolean 
		ifFalse: [BPTraces value removeKey: self exampleReference ifAbsent: []]
		ifTrue: [BPTraces value at: self exampleReference put: nil]