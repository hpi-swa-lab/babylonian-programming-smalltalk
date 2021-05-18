recording
addExampleWithMocks
	
	| mockTreeReceiverAndArguments |
	mockTreeReceiverAndArguments := self createMockTrees.
	self
		addExampleWith: mockTreeReceiverAndArguments first createMinimalObject
		and: (mockTreeReceiverAndArguments second collect: [:mockTree | mockTree createMinimalObject]).