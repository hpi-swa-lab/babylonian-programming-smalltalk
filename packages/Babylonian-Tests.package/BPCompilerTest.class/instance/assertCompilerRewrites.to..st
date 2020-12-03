asserting
assertCompilerRewrites: originalCode to: targetCode

	| resultingCode parseResult |
	parseResult := BPSmalltalkGrammar
					match: originalCode asString
					startingFrom: #MethodDeclaration.
	resultingCode := compiler rewriteToSource: parseResult.
	self assert: targetCode equals: resultingCode
	