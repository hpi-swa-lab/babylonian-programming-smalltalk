accessing
receiver: anObject
	
	super receiver: anObject.
	mockKey :=  self addMock: receiver key.
	mockValue :=  self addMock: receiver value.