regression tests
testRegressionBlockWithComment01

	startRule := #ExecutableCode.
	self shouldParse: '[:a | "comment"
		2 + 3]'.
	self shouldParse: '[
		"comment"
		2 + 3]'.
	self shouldParse: '[:a |
		"comment"
		2 + 3]'.
	self shouldParse: '[:a | "comment" 2 + 3]'.
	self shouldParse: '["comment"]'.