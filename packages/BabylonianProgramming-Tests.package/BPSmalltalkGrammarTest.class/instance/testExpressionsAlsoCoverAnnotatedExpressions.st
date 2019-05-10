tests
testExpressionsAlsoCoverAnnotatedExpressions

	startRule := #Expression.
	
	self shouldParseAll: 	{'"<test>"a msg1: foo"</test>"'}.