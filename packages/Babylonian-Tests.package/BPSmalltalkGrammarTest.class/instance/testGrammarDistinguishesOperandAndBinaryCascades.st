tests
testGrammarDistinguishesOperandAndBinaryCascades
	
	startRule := #Expression.
	self 
		shouldParse: '1 + 2 negated; negated' to: #(
			Expression (NormalExpression
				(NormalExpression_operandCascade
					(Operand (NormalOperand '1'))
					(CascadedMessages '+ 2 negated; negated')))).