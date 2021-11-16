tests
testUndefinedVariableBlockValue
	
	self codePaneTextMorph textMorph contents append: '[ | foo | ^ foo ] value'.
	text append: '[ | foo | ^ foo ] value'.	
	self 
		compiling: text
		shouldRaise: UndefinedVariable
		andSelect: [(self text allRangesOfRegexMatches: '(?<=\^ )foo') first]
		testing: {
			true -> [self assertSucceeded].
			false -> [self assertCanceled] }.