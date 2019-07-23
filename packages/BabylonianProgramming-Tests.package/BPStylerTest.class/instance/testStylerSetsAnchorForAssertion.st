tests
testStylerSetsAnchorForAssertion

	| formattedSourceCode originalSourceCode attributes |
	originalSourceCode := 'method
<exampleNamed: ''example 1''>
"<bpAssert that: [2 = 2]>"2 + 3"</bpAssert>"' asText.
	formattedSourceCode := styler format: originalSourceCode.
	
	self 
		assert: (formattedSourceCode asString includesSubstring: (Character startOfHeader asString , '2 + 3'));
		deny: (formattedSourceCode asString includesSubstring: '</bpAssert>').
		
	attributes := formattedSourceCode attributesAt: (formattedSourceCode asString lastIndexOf: Character startOfHeader).
	attributes := attributes select: [:a | a isKindOf: TextAnchor].
	self assert: (attributes first anchoredMorph isKindOf: BPAssertionMorph)
	
	
