object creation
createMinimalObject
	
	| result |
	
	result := receiver class basicNew. "new?"
	instVarNumbersAndValues keysAndValuesDo: [:instVarNumber :value |
		result instVarAt: instVarNumber put: value].
	^ result