tests
testThrowsError
	"Generated from an example, do not modify"

	self should: [(BPTestExamplesClass new) errorMethod: 0] raise: ZeroDivide