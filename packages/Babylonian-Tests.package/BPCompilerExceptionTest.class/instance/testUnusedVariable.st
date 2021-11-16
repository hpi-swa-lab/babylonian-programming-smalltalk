tests
testUnusedVariable

	self codePaneTextMorph textMorph contents append: '| foo | ^nil'.
	text append: '| foo | ^nil'.	
	self 
		compiling: text
		shouldRaise: UnusedVariable
		andSelect: [text]
		testing: {
			[:ex | ex resume] -> [self assertCanceled].
			false -> [self assertSucceeded].
			true -> [self assertSucceeded: ('someMethod\' withCRs, Character startOfHeader, '\s*\^nil') asRegex] }.