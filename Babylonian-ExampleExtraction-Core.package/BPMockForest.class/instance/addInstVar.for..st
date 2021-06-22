record mock
addInstVar: instVarNumber for: anObject
	
	objectMockMapping
		at: anObject
		ifPresent: [:mockObjectTemplate | mockObjectTemplate tryToAddInstVarNumber: instVarNumber].