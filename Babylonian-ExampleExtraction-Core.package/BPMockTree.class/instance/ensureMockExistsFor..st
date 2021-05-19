record mock
ensureMockExistsFor: anObject
	
	^ objectMockMapping at: anObject ifAbsentPut: [anObject bpMockTemplateClass for: anObject inMockTree: self]