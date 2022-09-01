regression tests
testRegressionAnnotationBlock03

	startRule := #ExecutableCode.
	self shouldParse: '"<bpSlider>"["comment"]"</bpSlider>"'.
	self shouldParse: '"<bpSlider>"[:a "comment"]"</bpSlider>"'.
	self shouldParse: '"<bpSlider>"[:a
		"comment"]"</bpSlider>"'.