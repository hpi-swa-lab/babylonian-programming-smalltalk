tests
testOtherCommentsAreStillComments

	startRule := #comment.

	self shouldParseAll: {'"any comment"' . '"s<test>"' . '" <"'}