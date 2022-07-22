tests
testStylerReusesExamplesMorphWhenStyledAgain
	
	| formattedSourceCode oldAttributes newAttributes originalSourceCode |
	originalSourceCode := 'method' asText.
	
	formattedSourceCode := styler format: originalSourceCode.
	oldAttributes := formattedSourceCode attributesAt: (formattedSourceCode asString indexOf: Character startOfHeader).
	oldAttributes := oldAttributes select: [:anAttribute | styler hasExamplesMorph: anAttribute].
	
	formattedSourceCode := styler format: formattedSourceCode.
	newAttributes := formattedSourceCode attributesAt: (formattedSourceCode asString indexOf: Character startOfHeader).
	newAttributes := newAttributes select: [:anAttribute | styler hasExamplesMorph: anAttribute].
	
	self assert: oldAttributes first identical: newAttributes first.
	