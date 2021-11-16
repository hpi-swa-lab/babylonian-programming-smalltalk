tests
testPastesTempForBlockValue

	| expectedString |
	self codePaneTextMorph textMorph contents append: ('\^ [ ', self undeclaredVar ,' ] value') withCRs.
	text append: ('\^ [ ', self undeclaredVar ,' ] value') withCRs.
	expectedString :=  ('someMethod\', Character startOfHeader, '\	\| foo |\^ [ ', self undeclaredVar, ' ] value') withCRs.
	self 
		compiling: text
		shouldRaise: UndeclaredVariable
		andSelect: 'foo'
		testing: {
			false -> [self assertCanceled].
			'declare method temp' -> expectedString}.