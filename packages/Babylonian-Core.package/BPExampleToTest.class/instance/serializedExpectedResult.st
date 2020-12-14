private - serializing
serializedExpectedResult

	| result |
	self example expectedResult isSymbol ifTrue: [^ self exampleMethodClassName, ' ' , self expectedResult].
	(self example isLiveSpecimenReference: self example expectedResult) ifTrue: [
		^ '']. 
	result := Compiler evaluate: self example expectedResult.
	^ result isSymbol
		ifTrue: [self exampleMethodClassName, ' ' , result]
		ifFalse: [self example expectedResult].