tests
testUnusedVariableInBlock
	
	self codePaneTextMorph textMorph contents append: '^[ | foo | ]'.
	text append: '^[ | foo | ]'.	
	self 
		compiling: text
		shouldRaise: UnusedVariable
		andSelect: [text]
		testing: {
			[:ex | ex resume] -> [self assertCanceled].
			false -> [self assertSucceeded].
			true -> [self assertSucceeded: ('someMethod\	' withCRs, Character startOfHeader, '\s*\^\[\s*\]') asRegex] }.