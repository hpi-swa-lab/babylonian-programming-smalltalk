initialize-release
addRootObject: anObject
	
	| mockRootObject |
	self reset.
	mockRootObject := self ensureMockExistsFor: anObject.
	root := mockRootObject.