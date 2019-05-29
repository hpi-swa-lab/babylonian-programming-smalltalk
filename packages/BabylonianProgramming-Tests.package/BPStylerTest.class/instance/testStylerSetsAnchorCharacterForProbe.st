tests
testStylerSetsAnchorCharacterForProbe

	| formattedSourceCode originalSourceCode styler |
	originalSourceCode := 'method
	"<bpProbe>"2 + 3"</bpProbe>"' asText.
	styler := BPStyler new.
	formattedSourceCode := styler format: originalSourceCode.
	
	self 
		assert: (formattedSourceCode asString includesSubstring: (Character startOfHeader asString , '2 + 3'));
		deny: (formattedSourceCode asString includesSubstring: '</bpProbe>')