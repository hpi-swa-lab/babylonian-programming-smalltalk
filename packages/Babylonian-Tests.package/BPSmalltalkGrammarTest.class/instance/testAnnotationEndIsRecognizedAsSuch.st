tests
testAnnotationEndIsRecognizedAsSuch
	
	startRule := #expressionAnnotationEnd.

	self 
		shouldParseAll: {'"</bpab>"' . '"</ bptest >"'};
		shouldntParseAny: {'"<>"' . '"</>"' . '"<a>"'}.