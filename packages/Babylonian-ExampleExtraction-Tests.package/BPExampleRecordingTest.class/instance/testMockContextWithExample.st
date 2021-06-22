test-mocking-mockContext
testMockContextWithExample
	
	| mockContext mockReceiverAndArguments example |
	example := BPTestCaseExample new.
	example
		testCaseClassFrom: BPTestCaseExampleTest name;
		methodSelector: #testSomething;
		method: BPTestCaseExampleTest>>#testSomething.
	mockContext := BPMockContext example: example.
	mockContext createMockForest.
	mockReceiverAndArguments := mockContext minimalObjects.
	self assert: (mockReceiverAndArguments first isKindOf: TestCase).
	self assert: mockReceiverAndArguments second isEmpty