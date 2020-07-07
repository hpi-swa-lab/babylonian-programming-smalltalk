tests
testGrammarDistinguishesOperandAndUnaryCascades
	
	startRule := #Expression.
	self 
		shouldParse: 'self new test; test' to: #(
			Expression (NormalExpression
				(NormalExpression_unaryCascade
					(UnaryMessageReceiver (UnaryMessageSend 'self new'))
					(CascadedMessages 'test; test'))))