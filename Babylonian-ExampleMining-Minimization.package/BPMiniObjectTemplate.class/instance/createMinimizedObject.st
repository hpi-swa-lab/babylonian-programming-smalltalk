object creation
createMinimizedObject

	| result |
	result := receiver class basicNew.
	instVarNumbersAndValues keysAndValuesDo: [:instVarNumber :value |
		result instVarAt: instVarNumber put: value].
	^ result