tests
testStylerSetsAnchorForReplacement

	| formattedSourceCode originalSourceCode styler attributes |
	originalSourceCode := 'method
<exampleNamed: ''example 1''>
"<bpReplace for: ''example 1'' with: [10]>"2 + 3"</bpReplace>"' asText.
	styler := BPStyler new.
	formattedSourceCode := styler format: originalSourceCode.
	
	self 
		assert: (formattedSourceCode asString includesSubstring: (Character startOfHeader asString , '2 + 3'));
		deny: (formattedSourceCode asString includesSubstring: '</bpReplace>').
		
	attributes := formattedSourceCode attributesAt: (formattedSourceCode asString indexOf: Character startOfHeader).
	attributes := attributes select: [:a | a isKindOf: TextAnchor].
	self assert: (attributes first anchoredMorph isKindOf: BPReplacementMorph)
