tests-minimizing
testMiniReceiverVariableAndNumberParameterIsUsedAndMinimized

	| receiver parameter miniReceiver miniParameter miniReceiverAndParameters |

	self assert: self recordings isEmpty.

	receiver := BPExampleMiningTestClass default.
	parameter := 7.

	self
		recordMethod: #doSomethingWithNumberAndAnotherNumber:
		inClass: BPExampleMiningTestClass
		forInstancesAndParameters: (Dictionary newFromPairs: {receiver. {parameter}}).

	self assert: self recordings isEmpty not.

	miniReceiverAndParameters := self getMinimizedObjectsForFirstRecording.
	miniReceiver := miniReceiverAndParameters first.
	miniParameter := miniReceiverAndParameters second first.
	self assert: miniReceiver myNumber equals: receiver defaultNumber.
	self assert: miniReceiver myCollection equals: nil.
	self assert: miniReceiver myBoolean equals: nil.
	self assert: miniReceiver myObject equals: nil.
	self assert: miniParameter equals: parameter