tests-minimizing-miniContext
testMiniContext

	| miniContext miniReceiverAndArguments |
	miniContext := BPMiniContext methodReference: Number>>#+ receiver: 1 arguments: {2}.
	miniContext createAndConfigureMiniForest.
	miniReceiverAndArguments := miniContext minimizedObjects.
	self assert: miniReceiverAndArguments first equals: 1.
	self assert: miniReceiverAndArguments second first equals: 2