tests
testGrammarDistinguishesOperandAndUnaryCascades
	
	startRule := #Expression.
	self 
		shouldParse: 'self new test; test' to: #(
			Expression (NormalExpression
				(NormalExpression_unaryCascade
					(UnaryMessageSend (NormalUnaryMessageSend 'self new '))
					(CascadedMessages 'test; test'))))