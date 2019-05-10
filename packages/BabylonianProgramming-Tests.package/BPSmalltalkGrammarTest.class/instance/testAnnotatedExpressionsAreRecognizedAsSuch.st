tests
testAnnotatedExpressionsAreRecognizedAsSuch

	startRule := #AnnotatedExpression.

	self 
		shouldParseAll: {'"<ab>"5 +2"</ab>"' . '"< test foo: 5 bar: '''' blub: 2>"''foo bar'' reversed"</ test>"'};
		shouldntParseAny: {'"<>"5 + 2"</>"' . '2+3"</a>"' . '"hallo>" 2+ 3" </>"'}