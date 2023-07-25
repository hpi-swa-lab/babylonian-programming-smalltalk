tests-minimizing
testMiniAssociation

	| receiver arguments miniArguments |

	self assert: self recordings isEmpty.

	receiver := BPExampleMiningTestClass new.
	arguments := {1->2}.

	self
		recordMethod: #doPrintStringThis:
		inClass: BPExampleMiningTestClass
		forInstancesAndParameters: (Dictionary newFromPairs: {receiver. arguments}).

	self assert: self recordings isEmpty not.

	miniArguments := self getMinimizedObjectsForFirstRecording second.
	self assert: arguments first equals: miniArguments first