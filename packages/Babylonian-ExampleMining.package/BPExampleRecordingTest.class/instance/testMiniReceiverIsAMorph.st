tests-minimizing
testMiniReceiverIsAMorph

	| receiver miniReceiver |
	self assert: self recordings isEmpty.

	receiver := Morph new.

	self
		recordMethod: #x
		inClass: Morph
		forInstancesAndParameters: (Dictionary newFromPairs: {receiver. {}}).

	self assert: self recordings isEmpty not.

	miniReceiver := self getMinimizedObjectsForFirstRecording first.
	self assert: miniReceiver isMorph.