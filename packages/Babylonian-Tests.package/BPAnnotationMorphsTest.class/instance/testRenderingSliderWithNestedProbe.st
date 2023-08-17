tests
testRenderingSliderWithNestedProbe

	| anchorAttribute renderedSource probeMorph sliderMorph |
	methodReference := MethodReference class: BPAnnotationMorphsTest selector: #methodWithBlock.
	source := ('methodWithBlock
	<exampleNamed: ''example 1''>
^ self do: [:r | 2 + 3]') asText.

	sliderMorph := BPSlider new
		methodReference: methodReference;
		id: 10;
		asMorph.
	anchorAttribute := BPTextDecoration new anchoredMorph: sliderMorph.
	source addAttribute: anchorAttribute from: 57 to: 68.

	probeMorph := BPProbe new
		id: 1;
		methodReference: methodReference;
		asMorph.
	anchorAttribute := BPTextDecoration new anchoredMorph: probeMorph.
	source addAttribute: anchorAttribute from: 63 to: 67.
	
	renderedSource := source asBPSource.
	self assert: 'methodWithBlock
	<exampleNamed: ''example 1''>
^ self do: "<bpSlider id: 10>"[:r | "<bpProbe id: 1>"2 + 3"</bpProbe>"]"</bpSlider>"' equals: renderedSource asString