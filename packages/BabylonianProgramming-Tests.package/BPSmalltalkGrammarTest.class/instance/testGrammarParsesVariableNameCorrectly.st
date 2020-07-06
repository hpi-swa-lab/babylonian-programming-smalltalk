tests
testGrammarParsesVariableNameCorrectly
	
	startRule := #Operand.
	self 
		shouldParse: 'falseVar' to: #(Operand (NormalOperand (Reference (identifier 'falseVar'))));
		shouldParse: 'trueVar' to: #(Operand (NormalOperand (Reference (identifier 'trueVar'))));
		shouldntParse: '2var'