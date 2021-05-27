ui - actions
recordAndMockButtonClicked

	| mockContext |
	mockContext := BPMockContext example: self example.
	mockContext receiverAndArguments inspect.
	mockContext createMockTrees.
	mockContext minimalObjects inspect.