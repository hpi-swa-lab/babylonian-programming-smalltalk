tests
testStylerAddsExamplesMorphFor: anOriginalSourceCode
	
	| formattedSourceCode attributes |
	formattedSourceCode := styler format: anOriginalSourceCode.
	attributes := formattedSourceCode attributesAt: 1.
	attributes := attributes select: [:anAttribute | styler hasExamplesMorph: anAttribute].
	self assert: 1 equals: attributes size.
	