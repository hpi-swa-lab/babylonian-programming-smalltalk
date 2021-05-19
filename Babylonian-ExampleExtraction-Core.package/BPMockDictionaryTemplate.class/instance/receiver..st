as yet unclassified
receiver: anObject
	
	super receiver: anObject.
	mockTemplateCollection := Dictionary new.
	receiver keysAndValuesDo: [:key :value | mockTemplateCollection add: (self addMock: key)->(self addMock: value)].