private - serializing
serializedFormOf: aPossibleCodeSnippet
	
	| result |
	aPossibleCodeSnippet isSymbol ifTrue: [^ self exampleMethodClassName, ' ' , aPossibleCodeSnippet].
	(self example isLiveSpecimenReference: aPossibleCodeSnippet) ifTrue: [^ '']. 
	result := Compiler evaluate: aPossibleCodeSnippet.
	^ result isSymbol
		ifTrue: [self exampleMethodClassName, ' ' , result]
		ifFalse: [aPossibleCodeSnippet]