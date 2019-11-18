testing
exampleNameMatches: anExampleName

	^ (anExampleName includesSubstring: '>>')
		ifTrue: ["global example name"
			self example uniqueIdentifier = anExampleName]
		ifFalse: ["local example name"
			self example exampleName = anExampleName]