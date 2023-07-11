tests-minimizing
testMiniReceiverVariableNotMinimizedIfSetBeforeUse

	| miniReceiver |

	self assert: self recordings isEmpty.

	self
		recordMethod: #setNumberBeforeDoingSomethingWithIt
		inClass: BPExampleMiningTestClass
		forInstancesAndParameters: {BPExampleMiningTestClass default -> {}} asDictionary.

	self assert: self recordings isEmpty not.

	miniReceiver := self getMinimizedObjectsForFirstRecording first.
	self assert: miniReceiver myNumber equals: nil.
	self assert: miniReceiver myCollection equals: nil.
	self assert: miniReceiver myBoolean equals: nil.
	self assert: miniReceiver myObject equals: nil