tests-minimizing-collections
testMiniReceiverIsAnOrderedCollectionWithAComplexObject

	| receiver miniReceiver |
	self assert: self recordings isEmpty.

	receiver := BPExampleMiningTestClass defaultWithComplexObjectInCollection.

	self
		recordMethod: #doSomethingWithComplexObjectInCollection
		inClass: BPExampleMiningTestClass
		forInstancesAndParameters: (Dictionary newFromPairs: {receiver. {}}).

	self assert: self recordings isEmpty not.

	miniReceiver := self getMinimizedObjectsForFirstRecording first.
	self assert: miniReceiver class equals: receiver class.
	self assert: miniReceiver myBoolean equals: nil.
	self assert: miniReceiver myObject equals: nil.
	self assert: miniReceiver myCollection size equals: 3.
	self assert: miniReceiver myCollection first class equals: BPExampleMiningTestClass.
	self assert: miniReceiver myCollection first myNumber equals: receiver defaultNumber.
	self assert: miniReceiver myCollection first myBoolean equals: nil.
	self assert: miniReceiver myCollection first myObject equals: nil.
	self assert: miniReceiver myCollection first myCollection equals: nil.
	self assert: miniReceiver myCollection second class equals: BPExampleMiningTestClass.
	self assert: miniReceiver myCollection second myNumber equals: nil.
	self assert: miniReceiver myCollection second myBoolean equals: nil.
	self assert: miniReceiver myCollection second myObject equals: nil.
	self assert: miniReceiver myCollection second myCollection equals: nil.
	self assert: miniReceiver myCollection third equals: #something