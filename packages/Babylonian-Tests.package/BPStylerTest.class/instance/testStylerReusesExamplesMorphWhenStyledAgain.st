tests
testStylerReusesExamplesMorphWhenStyledAgain
	
	| formattedSourceCode oldAttributes newAttributes originalSourceCode |
	originalSourceCode := 'method' asText.
	
	formattedSourceCode := styler format: originalSourceCode.
	oldAttributes := formattedSourceCode attributesAt: 1.
	oldAttributes := oldAttributes select: [:anAttribute | styler hasExamplesMorph: anAttribute].
	
	formattedSourceCode := styler format: formattedSourceCode.
	newAttributes := formattedSourceCode attributesAt: 1.
	newAttributes := newAttributes select: [:anAttribute | styler hasExamplesMorph: anAttribute].
	
	self assert: oldAttributes first identical: newAttributes first.
	