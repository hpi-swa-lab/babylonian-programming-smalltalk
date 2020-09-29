tests
testRenderingSliderWithNestedProbe
	
	| anchorAttribute renderedSource probeMorph sliderMorph |
	methodReference := MethodReference class: BPAnnotationMorphsTest selector: #methodWithBlock.
	source := ('methodWithBlock
	<exampleNamed: ''example 1''>
^ self do: ',Character startOfHeader,'[:r | ',Character startOfHeader,'2 + 3]') asText.

	sliderMorph := BPSlider new
		methodReference: methodReference;
		id: 10;
		asMorph.
	anchorAttribute := BPTextAnchor new anchoredMorph: sliderMorph.
	source addAttribute: anchorAttribute from: 57 to: 70.

	probeMorph := BPProbe new
		id: 1;
		methodReference: methodReference;
		asMorph.
	anchorAttribute := BPTextAnchor new anchoredMorph: probeMorph.
	source addAttribute: anchorAttribute from: 65 to: 69.
	
	renderedSource := source asBPSource.
	self assert: 'methodWithBlock
	<exampleNamed: ''example 1''>
^ self do: "<bpSlider id: 10>"[:r | "<bpProbe id: 1>"2 + 3"</bpProbe>"]"</bpSlider>"' equals: renderedSource asString.