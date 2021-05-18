record mock
addMock: anObject forInstVarNumber: aNumber notify: aMockTree
	
	| mockObjectTemplate |
	"((anObject isKindOf: OrderedCollection) and: [anObject isFirstIndexNil]) ifTrue: [^ self]."
	
	mockObjectTemplate := aMockTree ensureMockExistsFor: anObject.
	instVarNumbersAndValues at: aNumber put: mockObjectTemplate.