tests
testExpressionsAlsoCoverAnnotatedExpressions
	
	startRule := #Expression.
	
	self shouldParseAll: 	{'"<bpTest>"a msg1: foo"</bpTest>"'}.