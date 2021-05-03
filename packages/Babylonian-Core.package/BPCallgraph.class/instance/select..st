enumerating
select: aBlock

	| result |
	result := OrderedCollection new.
	self do: [:each | (aBlock value: each) ifTrue: [result addLast: each]].
	^ result