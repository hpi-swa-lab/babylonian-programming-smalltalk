tests
testRenderingSimpleSlider
	
	| anchorAttribute renderedSource slideMorph |
	methodReference := MethodReference class: BPAnnotationMorphsTest selector: #methodWithBlock.
	slideMorph := BPSlider new
		methodReference: methodReference;
		id: 10;
		asMorph.
	anchorAttribute := BPTextAnchor new anchoredMorph: slideMorph.
	expressionInterval := 57 to: 69.
	source := ('methodWithBlock
	<exampleNamed: ''example 1''>
^ self do: ',Character startOfHeader,'[:r | 2 + 3]') asText.
	source addAttribute: anchorAttribute from: expressionInterval start to: expressionInterval stop.
	
	renderedSource := source asBPSource.
	self assert: 'methodWithBlock
	<exampleNamed: ''example 1''>
^ self do: "<bpSlider id: 10>"[:r | 2 + 3]"</bpSlider>"' equals: renderedSource asString