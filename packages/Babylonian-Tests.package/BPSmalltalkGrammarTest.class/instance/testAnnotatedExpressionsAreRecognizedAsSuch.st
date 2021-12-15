tests
testAnnotatedExpressionsAreRecognizedAsSuch
	
	startRule := #AnnotatedExpression.

	self 
		shouldParseAll: {'"<bpab>"5 +2"</bpab>"' . '"<bptest foo: 5 bar: '''' blub: 2>"''foo bar'' reversed"</bptest>"' . '"<bpx ab: 3>"2 + 3"</bpx>"'};
		shouldntParseAny: {'"<>"5 + 2"</>"' . '2+3"</a>"' . '"hallo>" 2+ 3" </>"' . '"<ab>"5 + 2"</ab>"'}.