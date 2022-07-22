private
testBlockFor: test

	^ test isBlock
		ifTrue: [test]
		ifFalse: [[self assertSucceeded: test]]