accessing
allDescendantsOf: aProcess

	| next queue result |
	queue := OrderedCollection newFrom: {aProcess}.
	result := OrderedCollection new.
	[queue notEmpty] whileTrue: [ | descendants |
		next := queue removeFirst.
		descendants := self directDescendantsOf: next.
		result addAll: descendants.
		queue addAll: descendants].
	^ result reject: [:process | process isNil]