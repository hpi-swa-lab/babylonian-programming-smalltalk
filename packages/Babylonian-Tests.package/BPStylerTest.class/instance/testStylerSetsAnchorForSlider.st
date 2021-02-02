tests
testStylerSetsAnchorForSlider
	
	| formattedSourceCode originalSourceCode attributes |
	originalSourceCode := 'method
	<testRef: ''BPAnnotationMorphsTestTest>>#testExample1''>
	"<bpSlider>"2 + 3"</bpSlider>"' asText.
	formattedSourceCode := styler format: originalSourceCode.
	
	self 
		assert: (formattedSourceCode asString includesSubstring: (Character startOfHeader asString , '2 + 3'));
		deny: (formattedSourceCode asString includesSubstring: '</bpSlider>').
		
	attributes := formattedSourceCode attributesAt: (formattedSourceCode asString lastIndexOf: Character startOfHeader).
	attributes := attributes select: [:a | a isKindOf: TextAnchor].
	self assert: (attributes first anchoredMorph isKindOf: BPSliderMorph).
	
	