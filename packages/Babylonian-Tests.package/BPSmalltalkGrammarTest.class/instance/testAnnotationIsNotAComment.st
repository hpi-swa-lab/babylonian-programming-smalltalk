tests
testAnnotationIsNotAComment

	startRule := #comment.

	self shouldntParseAny: {'"<"' . '"<test>"'}