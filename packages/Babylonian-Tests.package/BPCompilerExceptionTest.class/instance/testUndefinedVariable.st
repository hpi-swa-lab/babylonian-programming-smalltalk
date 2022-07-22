tests
testUndefinedVariable
	
	
	self codePaneTextMorph textMorph contents append: '| foo | ^ foo'.
	text append: '| foo | ^ foo'.
	self 
		compiling: text
		shouldRaise: UndefinedVariable
		andSelect: [(self text allRangesOfRegexMatches: '(?<=\^ )foo') first]
		testing: {
			true -> [self assertSucceeded].
			false -> [self assertCanceled] }.