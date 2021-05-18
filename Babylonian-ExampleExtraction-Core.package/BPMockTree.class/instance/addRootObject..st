initialize-release
addRootObject: anObject
	
	| mockRootObject |
	self reset.
	mockRootObject := BPMockObjectTemplate for: anObject.
	objectMockMapping at: anObject put: mockRootObject.
	root := mockRootObject.