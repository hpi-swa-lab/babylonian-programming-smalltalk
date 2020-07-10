tests
testAnnotationEndIsRecognizedAsSuch

	startRule := #expressionAnnotationEnd.

	self 
		shouldParseAll: {'"</ab>"' . '"</ test >"'};
		shouldntParseAny: {'"<>"' . '"</>"' . '"<a>"'}