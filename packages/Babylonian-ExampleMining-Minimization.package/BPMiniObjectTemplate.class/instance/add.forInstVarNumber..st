minimization
add: anObject forInstVarNumber: aNumber
	
	instVarNumbersAndValues at: aNumber put: (self ensureTemplateFor: anObject).