assertions
assertSelection: selectionMatch

	selectionMatch isBlock ifTrue: [
		^ self assertSelection: selectionMatch value].
	^ self
		assert: selectionMatch
		equals: (selectionMatch isInterval
			ifTrue: [self selectionInterval]
			ifFalse: [self selection])