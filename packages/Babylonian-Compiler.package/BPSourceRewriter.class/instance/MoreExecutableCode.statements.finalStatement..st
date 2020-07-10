grammar rules
MoreExecutableCode: aNode statements: statements finalStatement: finalStatement

	| finalStatementSource statementsSource finalStatementTemplate blockId |
	blockId := "<bpProbe id: 4687719>"self nextBlockId"</bpProbe>".  
 	statementsSource := self value: statements. 
	finalStatementTemplate := 'self bpBlock: {1} leftWith: ({2}) at: thisContext'.
	finalStatementSource := self value: finalStatement.
	finalStatementSource 
		ifEmpty: [
			statementsSource := self valueStatements: statements withLastStatementAs: [:lastStatement |
				finalStatementTemplate format: {blockId . lastStatement}]. ]
		ifNotEmpty: [
			statementsSource := self value: statements. 
			"We have to express the condition this akwardly to protect from lines as the condition itself (small riddle :))"
			finalStatementSource := (finalStatementSource withBlanksTrimmed first = $^) 
				ifTrue: [ | finalStatementParts |
					finalStatementParts := {
						(finalStatementSource copyUpTo: $^) , '^ '.
						(finalStatementSource copyAfterLast: $^) withBlanksTrimmed }.
					finalStatementParts first , (finalStatementTemplate format: {blockId . finalStatementParts second})]
				ifFalse: [
					finalStatementTemplate format: {blockId . finalStatementSource}]].
			
	^ '{1}
{2}{3}' format: {
		'self bpBlock: {1} enteredAt: thisContext.' format: {blockId}. 
		"<bpProbe id: 7461743>"statementsSource"</bpProbe>".
		finalStatementSource}