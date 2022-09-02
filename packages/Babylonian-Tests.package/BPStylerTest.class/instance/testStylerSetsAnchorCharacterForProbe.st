tests
testStylerSetsAnchorCharacterForProbe
	
	| formattedSourceCode originalSourceCode |
	originalSourceCode := 'method
	"<bpProbe id: 1>"2 + 3"</bpProbe>"' asText.
	formattedSourceCode := styler format: originalSourceCode.
	
	self 
		assert: (formattedSourceCode asString includesSubstring: '2 + 3');
		deny: (formattedSourceCode asString includesSubstring: '</bpProbe>').