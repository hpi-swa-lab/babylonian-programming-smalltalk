tests
testGrammarParsesConstantReferencesNotVariables

	startRule := #NormalOperand.
	self 
		shouldParse: 'false' to: #(NormalOperand (Literal (constantReference 'false')));
		shouldParse: 'nil' to: #(NormalOperand (Literal (constantReference 'nil')));
		shouldParse: 'true' to: #(NormalOperand (Literal (constantReference 'true'))).