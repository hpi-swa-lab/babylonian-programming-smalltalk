test-mocking-mockContext
testMockContext
	
	| mockContext mockReceiverAndArguments |
	mockContext := BPMiniContext methodReference: Number>>#+ receiver: 1 arguments: {2}.
	mockContext createAndConfigureMiniForest.
	mockReceiverAndArguments := mockContext minimizedObjects.
	self assert: mockReceiverAndArguments first equals: 1.
	self assert: mockReceiverAndArguments second first equals: 2.
	