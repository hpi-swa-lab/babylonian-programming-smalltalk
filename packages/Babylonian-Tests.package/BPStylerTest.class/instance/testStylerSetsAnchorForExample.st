tests
testStylerSetsAnchorForExample

	| formattedSourceCode originalSourceCode attributes |
	originalSourceCode := 'method
<exampleNamed: ''example 1''>
"<bpReplace for: ''example 1'' with: [10]>"2 + 3"</bpReplace>"' asText.
	formattedSourceCode := styler format: originalSourceCode.
	
	self deny: (formattedSourceCode asString includesSubstring: '<exampleNamed: ''example 1''>').
		
	attributes := formattedSourceCode attributesAt: (formattedSourceCode asString indexOf: Character startOfHeader).
	attributes := attributes select: [:a | a isKindOf: TextAnchor].
	self assert: (attributes first anchoredMorph isKindOf: BPExamplesMorph).
