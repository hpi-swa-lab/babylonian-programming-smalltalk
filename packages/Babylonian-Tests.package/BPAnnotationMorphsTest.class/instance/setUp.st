running
setUp

	methodReference := MethodReference class: BPAnnotationMorphsTest selector: #method.
	source := ('method
<exampleNamed: ''example 1''>
^ ' , Character startOfHeader , '2 + 3') asText.
	expressionInterval := 39 to: 43.
	