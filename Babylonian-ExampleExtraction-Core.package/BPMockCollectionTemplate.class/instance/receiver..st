accessing
receiver: anObject
	
	super receiver: anObject.
	mockTemplateCollection := receiver collect: [:each | self addMock: each].