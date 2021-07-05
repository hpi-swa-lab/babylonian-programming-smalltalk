record mock
addMock: anObject forInstVarNumber: aNumber
	
	| mockObjectTemplate |
	
	mockObjectTemplate := forest ensureMockExistsFor: anObject.
	instVarNumbersAndValues at: aNumber put: mockObjectTemplate.