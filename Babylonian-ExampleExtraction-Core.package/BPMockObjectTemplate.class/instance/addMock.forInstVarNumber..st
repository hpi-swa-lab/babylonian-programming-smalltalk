record mock
addMock: anObject forInstVarNumber: aNumber
	
	| mockObjectTemplate |
	
	mockObjectTemplate := mockTree ensureMockExistsFor: anObject.
	instVarNumbersAndValues at: aNumber put: mockObjectTemplate.