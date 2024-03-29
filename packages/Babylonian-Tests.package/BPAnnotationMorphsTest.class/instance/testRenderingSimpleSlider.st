tests
testRenderingSimpleSlider

	| anchorAttribute renderedSource slideMorph |
	methodReference := MethodReference class: BPAnnotationMorphsTest selector: #methodWithBlock.
	slideMorph := BPSlider new
		methodReference: methodReference;
		id: 10;
		asMorph.
	anchorAttribute := BPTextDecoration new anchoredMorph: slideMorph.
	expressionInterval := 57 to: 68.
	source := ('methodWithBlock
	<exampleNamed: ''example 1''>
^ self do: [:r | 2 + 3]') asText.
	source addAttribute: anchorAttribute from: expressionInterval start to: expressionInterval stop.
	
	renderedSource := source asBPSource.
	self assert: 'methodWithBlock
	<exampleNamed: ''example 1''>
^ self do: "<bpSlider id: 10>"[:r | 2 + 3]"</bpSlider>"' equals: renderedSource asString