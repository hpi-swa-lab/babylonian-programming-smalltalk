as yet unclassified
setMockTemplateCollection
	
	mockTemplateCollection := receiver collect: [:each | self addMock: each] as: OrderedCollection.