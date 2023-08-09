tests-minimizing
testMiniReceiverVariableUsesGetterOfOtherObject

	| receiver miniReceiver |

	self assert: self recordings isEmpty.

	receiver := BPExampleMiningTestClass defaultWithAnotherDefaultAsMyObject.

	self
		recordMethod: #doSomethingWithTheMyObjectMyNumberGetter
		inClass: BPExampleMiningTestClass
		forInstancesAndParameters: (Dictionary newFromPairs: {receiver. {}}).

	self assert: self recordings isEmpty not.

	miniReceiver := self getMinimizedObjectsForFirstRecording first.
	self assert: miniReceiver myNumber equals: nil.
	self assert: miniReceiver myCollection equals: nil.
	self assert: miniReceiver myBoolean equals: nil.
	self assert: miniReceiver myObject class equals: BPExampleMiningTestClass.
	self assert: miniReceiver myObject myNumber equals: receiver defaultNumber.
	self assert: miniReceiver myObject myCollection equals: nil.
	self assert: miniReceiver myObject myBoolean equals: nil.
	self assert: miniReceiver myObject myObject equals: nil