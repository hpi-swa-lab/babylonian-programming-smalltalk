running
setUp

	methodReference := (MethodReference class: BPAnnotationMorphsTest selector: #testRenderingNestedProbes).
	source := ('method
<example>
^ ' , Character startOfHeader , '2 + 3') asText.
	expressionInterval := 21 to: 25.
	