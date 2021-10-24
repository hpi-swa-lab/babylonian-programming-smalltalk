tests
testStylerAddsExamplesMorphFor: anOriginalSourceCode
	
	| formattedSourceCode attributes |
	formattedSourceCode := styler format: anOriginalSourceCode.
	
	attributes := formattedSourceCode attributesAt: (formattedSourceCode asString indexOf: Character startOfHeader).
	attributes := attributes select: [:anAttribute | styler hasExamplesMorph: anAttribute].
	self assert: 1 equals: attributes size.
	