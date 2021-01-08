private
numEqualElementsOf: a and: b

	| size |
	size := a size min: b size.
	1 to: size do: [:index | (a at: index) = (b at: index) ifFalse: [^ index - 1]].
	^ size