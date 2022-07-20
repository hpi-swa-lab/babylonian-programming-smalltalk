tests
testPastesBlockLocalTemp

	| expectedString |
	self codePaneTextMorph textMorph contents append: ('\^ [ ', self undeclaredVar ,' ] value') withCRs.
	text append:  ('\^ [ ', self undeclaredVar ,' ] value') withCRs.
	expectedString := ('someMethod\\	\^ [ | foo | ', self undeclaredVar, ' ] value') withCRs.
	self 
		compiling: text
		shouldRaise: UndeclaredVariable
		andSelect: 'foo'
		testing: {
			false -> [self assertCanceled].
			'declare block-local temp' -> expectedString}.