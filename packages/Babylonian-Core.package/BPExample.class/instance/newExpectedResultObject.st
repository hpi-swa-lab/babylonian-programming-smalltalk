accessing
newExpectedResultObject

	| result |
	self expectedResult isSymbol ifTrue: [^ self method methodClass perform: self expectedResult].
	(self isLiveSpecimenReference: self expectedResult) ifTrue: [^ self resolveLiveSpecimen: self expectedResult]. 

	result := Compiler evaluate: self expectedResult.
	^ result isSymbol
		ifTrue: [self method methodClass perform: result]
		ifFalse: [result] 