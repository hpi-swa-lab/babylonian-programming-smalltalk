object creation
setMockTemplateCollection

	mockTemplateCollection := receiver collect: [:each | self addMock: each].