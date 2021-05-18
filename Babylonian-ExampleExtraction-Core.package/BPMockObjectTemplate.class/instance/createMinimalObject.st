object creation
createMinimalObject
	
	| result |
	(self objectIsLeaf: receiver) ifTrue: [^ receiver].
	
	result := receiver class "basicNew"new.
	instVarNumbersAndValues keysAndValuesDo: [:instVarNumber :value |
		result instVarAt: instVarNumber put: value].
	^ result