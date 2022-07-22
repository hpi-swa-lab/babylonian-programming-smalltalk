tests
testUnstyledTextFromBasic
	
	| formattedSourceCode originalSourceCode |
	originalSourceCode := 'method
	<exampleNamed: ''example 1'' self: ''BPStylerTest new''>
	"<bpProbe id: 31412>"2 + 3"</bpProbe>"' asText.
	formattedSourceCode := styler format: originalSourceCode.
	self assert: originalSourceCode equals: (styler unstyledTextFrom: formattedSourceCode).
	
	originalSourceCode := 'method
	<exampleNamed: ''example 1'' self: ''BPStylerTest new''>
	self do: "<bpSlider id: 7212069>"[:n | 2 + "<bpProbe id: 31412>"3"</bpProbe>"]"</bpSlider>"' asText.
	formattedSourceCode := styler format: originalSourceCode.
	self assert: originalSourceCode equals: (styler unstyledTextFrom: formattedSourceCode).