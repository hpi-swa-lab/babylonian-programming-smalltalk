private - serializing
serializedFormOf: aPossibleCodeSnippet
	
	| result |
	aPossibleCodeSnippet isSymbol ifTrue: [^ self exampleMethodClassName, ' ' , aPossibleCodeSnippet].
	result := Compiler evaluate: aPossibleCodeSnippet.
	(self example isLiveSpecimenReference: result) ifTrue: [^ (self example resolveLiveSpecimen: result) printString]. 
	^ result isSymbol
		ifTrue: [self exampleMethodClassName, ' ' , result]
		ifFalse: [aPossibleCodeSnippet]