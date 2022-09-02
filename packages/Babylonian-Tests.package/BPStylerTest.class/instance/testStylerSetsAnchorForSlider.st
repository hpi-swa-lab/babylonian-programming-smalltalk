tests
testStylerSetsAnchorForSlider
	
	| formattedSourceCode originalSourceCode attributes |
	originalSourceCode := 'method
	<exampleNamed: ''example 1''>
	"<bpSlider>"2 + 3"</bpSlider>"' asText.
	formattedSourceCode := styler format: originalSourceCode.
	
	self 
		assert: (formattedSourceCode asString includesSubstring: '2 + 3');
		deny: (formattedSourceCode asString includesSubstring: '</bpSlider>').
		
	attributes := formattedSourceCode attributesAt: (formattedSourceCode asString indexOf: $2).
	attributes := attributes select: [:a | a isKindOf: TextAnchor].
	self assert: (attributes first anchoredMorph isKindOf: BPSliderMorph).
	
	