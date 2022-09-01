regression tests
testRegressionAnnotationBlock01

	startRule := #ExecutableCode.
	self shouldParse: '"<bpProbe>"[:a |
		"comment"
		2 + 3]"</bpProbe>"'.
	self shouldParse: '"<bpProbe id: 2>"[:a |
		"comment"
		2 + 3]"</bpProbe>"'.
	self shouldParse: '"<bpSlider id: 2>"[:a |
		"comment"
		2 + 3]"</bpSlider>"'.
	self shouldParse: '"<bpSlider id: 2>"[:a | "comment" 2 + 3]"</bpSlider>"'.
	self shouldParse: '"<bpSlider id: 2>"[ "comment"
		2 + 3]"</bpSlider>"'.
	self shouldParse: '"<bpSlider id: 2>"["comment" 2 + 3]"</bpSlider>"'.