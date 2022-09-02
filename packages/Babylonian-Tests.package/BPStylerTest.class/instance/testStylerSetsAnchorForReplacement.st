tests
testStylerSetsAnchorForReplacement

	| formattedSourceCode originalSourceCode attributes |
	originalSourceCode := 'method
	<exampleNamed: ''example 1''>
"<bpReplace for: ''example 1'' with: [10]>"2 + 3"</bpReplace>"' asText.
	formattedSourceCode := styler format: originalSourceCode.
	
	self 
		assert: (formattedSourceCode asString includesSubstring: '2 + 3');
		deny: (formattedSourceCode asString includesSubstring: '</bpReplace>').
		
	attributes := formattedSourceCode attributesAt: (formattedSourceCode asString indexOf: $2).
	attributes := attributes select: [:a | a isKindOf: TextAnchor].
	self assert: (attributes first anchoredMorph isKindOf: BPReplacementMorph).