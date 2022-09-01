regression tests
testRegressionAnnotationBlock02

	startRule := #ExecutableCode.
	self shouldParse: '"<bpSlider>"[:a |
		2 + 3]"</bpSlider>"'.
	self shouldParse: '"<bpSlider id: 2>"[:a |
		2 + 3]"</bpSlider>"'.
	self shouldParse: '"<bpSlider id: 2>"[:a | 2 + 3]"</bpSlider>"'.
	self shouldParse: '"<bpSlider id: 2>"[
		2 + 3]"</bpSlider>"'.
	self shouldParse: '"<bpSlider id: 2>"[2 + 3]"</bpSlider>"'.