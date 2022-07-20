tests
testStylerSetsAnchorCharacterForProbe
	
	| formattedSourceCode originalSourceCode |
	originalSourceCode := 'method
	"<bpProbe id: 1>"2 + 3"</bpProbe>"' asText.
	formattedSourceCode := styler format: originalSourceCode.
	
	self 
		assert: (formattedSourceCode asString includesSubstring: '2 + 3');
		deny: (formattedSourceCode asString includesSubstring: Character startOfHeader asString); "prevent legacy behavior, to be removed in v0.7 --pre"
		deny: (formattedSourceCode asString includesSubstring: '</bpProbe>').