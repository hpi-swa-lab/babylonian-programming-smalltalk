tests-minimizing-leaf
runForLeafObjectReceiver: receiver ofClass: receiverClass method: aSelector class: aClass

	|  miniReceiver |
	self assert: self recordings isEmpty.

	self
		recordMethod: aSelector
		inClass: aClass
		forInstancesAndParameters: (Dictionary newFromPairs: {receiver. {}}).

	self assert: self recordings isEmpty not.

	miniReceiver := self getMinimizedObjectsForFirstRecording first.
	self assert: (miniReceiver isKindOf: receiverClass).
	self assert: miniReceiver printString equals: receiver printString