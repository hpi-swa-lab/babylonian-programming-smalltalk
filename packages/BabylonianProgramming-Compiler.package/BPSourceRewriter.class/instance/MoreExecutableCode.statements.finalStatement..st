grammar rules
MoreExecutableCode: aNode statements: statements finalStatement: finalStatement

	| finalStatementSource statementsSource |
	statementsSource := self value: statements. 
	finalStatementSource := self value: finalStatement.
	finalStatementSource ifEmpty: [finalStatementSource := ''].
	
	^ '{1}
{2}{3}' format: {
		'self bpBlockEntered: thisContext.' . 
		statementsSource.
		finalStatementSource}