accessing
newExpectedResultObject

	| result |
	self expectedResult isSymbol ifTrue: [
		^ self method methodClass perform: self expectedResult].
	self expectedResult isLiveSpecimenReference ifTrue: [
		^ self resolveLiveSpecimen: self expectedResult]. 

	result := Compiler evaluate: self expectedResult.
	^ result isSymbol
		ifTrue: [self method methodClass perform: result]
		ifFalse: [result] 