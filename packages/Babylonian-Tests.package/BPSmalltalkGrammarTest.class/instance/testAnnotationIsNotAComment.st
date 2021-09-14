tests
testAnnotationIsNotAComment
	
	startRule := #comment.

	self shouldntParseAny: {'"<bp"' . '"</bptest>"'}.