tests-minimizing-miniContext
testMiniContextWithExample

	| miniContext miniReceiverAndArguments example |
	example := BPTestCaseExample new.
	example
		testCaseClass: BPTestCaseExampleTest;
		methodSelector: #testSomething;
		method: BPTestCaseExampleTest>>#testSomething.
	miniContext := BPMiniContext example: example.
	miniContext createAndConfigureMiniForest.
	miniReceiverAndArguments := miniContext minimizedObjects.
	self assert: (miniReceiverAndArguments first isKindOf: TestCase).
	self assert: miniReceiverAndArguments second isEmpty