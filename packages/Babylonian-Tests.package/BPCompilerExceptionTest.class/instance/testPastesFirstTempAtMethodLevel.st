tests
testPastesFirstTempAtMethodLevel

	| expectedString |
	self codePaneTextMorph textMorph contents append: self undeclaredVar.
	text append: self undeclaredVar.
	expectedString :=  ('someMethod\', Character startOfHeader, '\	\| foo |', self undeclaredVar) withCRs.
	self 
		compiling: text
		shouldRaise: UndeclaredVariable
		andSelect: 'foo'
		testing: {
			false -> [self assertCanceled].
			'declare method temp' -> expectedString}.