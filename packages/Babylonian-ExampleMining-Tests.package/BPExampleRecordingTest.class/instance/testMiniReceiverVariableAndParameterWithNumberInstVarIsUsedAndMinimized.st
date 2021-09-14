tests-minimizing
testMiniReceiverVariableAndParameterWithNumberInstVarIsUsedAndMinimized
	
	| receiver parameter miniReceiver miniParameter miniReceiverAndParameters |
	
	self assert: self recordings isEmpty.
	
	receiver := BPExampleMiningTestClass default.
	parameter := BPExampleMiningTestClass defaultWithOtherNumber.
	
	self
		recordMethod: #doSomethingWithNumberAndNumberFrom:
		inClass: BPExampleMiningTestClass
		forInstancesAndParameters: {receiver -> {parameter}} asDictionary.
	
	self assert: self recordings isEmpty not.
	
	miniReceiverAndParameters := self getMinimizedObjectsForFirstRecording.
	miniReceiver := miniReceiverAndParameters first.
	miniParameter := miniReceiverAndParameters second first.
	self assert: miniReceiver myNumber equals: receiver defaultNumber.
	self assert: miniReceiver myCollection equals: nil.
	self assert: miniReceiver myBoolean equals: nil.
	self assert: miniReceiver myObject equals: nil.
	self assert: miniParameter myNumber equals: parameter defaultOtherNumber.
	self assert: miniParameter myCollection equals: nil.
	self assert: miniParameter myBoolean equals: nil.
	self assert: miniParameter myObject equals: nil.