*Babylonian-Core
exampleInstanceName
	
	^ (self hasPragma: #exampleInstance:)
		ifTrue: [(self pragmaAt: #exampleInstance:) argumentAt: 1]
		ifFalse: ['']