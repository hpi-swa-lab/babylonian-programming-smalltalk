emulating
correctFrom: start to: stop with: aString

	| delta userSelection |
	userSelection := self selectionInterval.
	text := (text first: start - 1) , aString , (text allButFirst: stop).
	delta := aString size - (stop - start + 1).
	self
		selectInvisiblyFrom: userSelection first + (userSelection first > start ifFalse: [ 0 ] ifTrue: [ delta ])
		to: userSelection last + (userSelection last > start ifFalse: [ 0 ] ifTrue: [ delta ]).