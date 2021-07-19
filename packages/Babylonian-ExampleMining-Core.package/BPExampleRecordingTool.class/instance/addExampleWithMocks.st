recording
addExampleWithMocks
	
	| mockForest mockReceiverAndArguments |
	mockForest := self createMockForest.
	mockReceiverAndArguments := self createMinimalObjects.
	self
		addExampleWith: mockReceiverAndArguments first
		and: mockReceiverAndArguments second.