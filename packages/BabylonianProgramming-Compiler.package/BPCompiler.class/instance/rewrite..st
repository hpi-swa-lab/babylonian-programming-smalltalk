private
rewrite: originalCode

	| parseResult |
	parseResult := BPSmalltalkGrammar 
					match: originalCode asString
					startingFrom: #MethodDeclaration.
	^ parseResult succeeded 
		ifTrue: [self rewriter value: parseResult]
		ifFalse: [Error signal: 'parse failed']