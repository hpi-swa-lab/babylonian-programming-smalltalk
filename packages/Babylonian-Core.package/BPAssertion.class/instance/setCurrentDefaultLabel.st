accessing
setCurrentDefaultLabel

	"stores a name or message of an assertion which the BPPrintbugger uses to print along a assertions's values"
	label := self assertion, '. result = ', (( self enclosedExpressionSource includesSubstring: ':' )
		ifTrue: ['(', self enclosedExpressionSource, ')']
		ifFalse: [self enclosedExpressionSource]).