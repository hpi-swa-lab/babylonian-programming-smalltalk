tests
testPastesSecondTempAtMethodLevel
	
	| expectedString |
	self codePaneTextMorph textMorph contents append: ('| a | \ a := 3.', self undeclaredVar) withCRs.
	text append:  ('| a | \ a := 3.', self undeclaredVar) withCRs.
	expectedString :=  ('someMethod\	', Character startOfHeader, '\	| a foo | \ a := 3.', self undeclaredVar) withCRs.
	self 
		compiling: text
		shouldRaise: UndeclaredVariable
		andSelect: 'foo'
		testing: {
			false -> [self assertCanceled].
			'declare method temp' -> expectedString}.