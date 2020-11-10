as yet unclassified
prettifyForMethodName: aSearchTerm

	| result index |
	result := aSearchTerm asString withBlanksTrimmed.
	index := (result indexOf: $: startingAt: 1).
	index > 0 ifTrue: [result := result copyFrom: 1 to: index - 1].
	^ result asUppercase