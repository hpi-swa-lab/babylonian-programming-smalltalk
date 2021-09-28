*Babylonian-Core
exampleInstanceName
	
	self isExampleInstanceMethod ifFalse: [^ ''].
	^ (self hasPragma: #exampleInstance:)
		ifTrue: [(self pragmaAt: #exampleInstance:) argumentAt: 1]
		ifFalse: [self selector fromCamelCase]