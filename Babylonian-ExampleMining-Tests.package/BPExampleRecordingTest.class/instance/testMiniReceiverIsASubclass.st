tests-minimizing
testMiniReceiverIsASubclass

	| receiver miniReceiver |

	self assert: self recordings isEmpty.

	receiver := BPExampleMiningTestSubclass default.

	self
		recordMethod: #subclassMethod
		inClass: BPExampleMiningTestSubclass
		forInstancesAndParameters: {receiver -> {}} asDictionary.

	self assert: self recordings isEmpty not.

	miniReceiver := self getMinimizedObjectsForFirstRecording first.
	self assert: miniReceiver myNumber equals: receiver defaultNumber.
	self assert: miniReceiver myCollection equals: nil.
	self assert: miniReceiver myBoolean equals: nil.
	self assert: miniReceiver myObject equals: nil