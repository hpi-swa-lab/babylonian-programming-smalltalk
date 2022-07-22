tests
testAnnotationStartIsRecognizedAsSuch
	
	startRule := #expressionAnnotationStart.

	self 
		shouldParseAll: {'"<bpab>"' . '"< bptest foo: 5 bar: '''' blub: 2>"'};
		shouldntParseAny: {'"<>"' . '"</a>"'}.