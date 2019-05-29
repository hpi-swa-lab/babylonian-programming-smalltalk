*BabylonianProgramming-COre
replaceStrings: aCollection

	| result |
	result := self.
	aCollection do: [:each |
		(result includesSubstring: each key) ifTrue: [
			 result := result copyReplaceAll: each key with: each value]].
	^ result