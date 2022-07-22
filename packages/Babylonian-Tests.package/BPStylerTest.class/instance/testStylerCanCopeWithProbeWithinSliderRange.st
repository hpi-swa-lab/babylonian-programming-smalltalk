tests
testStylerCanCopeWithProbeWithinSliderRange
	
	| formattedSourceCode originalSourceCode attributes |
	originalSourceCode := 'method
	<exampleNamed: ''example 1''>
	self do: "<bpSlider>"[:n | 2 + "<bpProbe id: 31412>"3"</bpProbe>"]"</bpSlider>"' asText.
	formattedSourceCode := styler format: originalSourceCode.
	
	self 
		assert: (formattedSourceCode asString includesSubstring: '[:n | 2 +');
		assert: (formattedSourceCode asString includesSubstring: '3]');
		deny: (formattedSourceCode asString includesSubstring: (Character startOfHeader asString , '[:n | 2 +')); "prevent legacy behavior, to be removed in v0.7 --pre"
		deny: (formattedSourceCode asString includesSubstring: (Character startOfHeader asString , '3]')); "prevent legacy behavior, to be removed in v0.7 --pre"
		deny: (formattedSourceCode asString includesSubstring: '</bpSlider>');
		deny: (formattedSourceCode asString includesSubstring: '</bpProbe>').
		
	attributes := formattedSourceCode attributesAt: (formattedSourceCode asString indexOf: $[).
	attributes := attributes select: [:a | a isKindOf: TextAnchor].
	self assert: (attributes first anchoredMorph isKindOf: BPSliderMorph).
	
	