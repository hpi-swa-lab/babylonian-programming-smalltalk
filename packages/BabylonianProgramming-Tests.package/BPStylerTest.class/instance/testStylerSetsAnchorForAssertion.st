tests
testStylerSetsAnchorForAssertion

	| formattedSourceCode originalSourceCode styler attributes |
	originalSourceCode := 'method
<exampleNamed: ''example 1''>
"<bpAssert that: [2 = 2]>"2 + 3"</bpAssert>"' asText.
	styler := BPStyler new.
	formattedSourceCode := styler format: originalSourceCode.
	
	self 
		assert: (formattedSourceCode asString includesSubstring: (Character startOfHeader asString , '2 + 3'));
		deny: (formattedSourceCode asString includesSubstring: '</bpAssert>').
		
	attributes := formattedSourceCode attributesAt: (formattedSourceCode asString indexOf: Character startOfHeader).
	attributes := attributes select: [:a | a isKindOf: TextAnchor].
	self assert: (attributes first anchoredMorph isKindOf: BPAssertionMorph)
	
	
