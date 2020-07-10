tests
testAnnotationStartIsRecognizedAsSuch

	startRule := #expressionAnnotationStart.

	self 
		shouldParseAll: {'"<ab>"' . '"< test foo: 5 bar: '''' blub: 2>"'};
		shouldntParseAny: {'"<>"' . '"</a>"'}