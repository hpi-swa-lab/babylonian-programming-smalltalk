record mock
ensureMockExistsFor: anObject
	
	^ objectMockMapping at: anObject ifAbsentPut: [BPMockObjectTemplate for: anObject]