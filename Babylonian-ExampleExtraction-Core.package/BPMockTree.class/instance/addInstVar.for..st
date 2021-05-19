record mock
addInstVar: aNumber for: anObject
	
	
	objectMockMapping
		at: anObject
		ifPresent: [:mockObjectTemplate | mockObjectTemplate tryToAddInstVarNumber: aNumber]
		"ifAbsent: [Transcript showln: 'Not in MockTree: ', anObject printString]".