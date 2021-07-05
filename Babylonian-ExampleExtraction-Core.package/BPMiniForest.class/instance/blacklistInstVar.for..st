record mock
blacklistInstVar: aNumber for: anObject
	
	objectMockMapping
		at: anObject
		ifPresent: [:mockObjectTemplate | mockObjectTemplate blacklistInstVarNumber: aNumber].