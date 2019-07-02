private
privateFormat: aText

	| parseResult |
	parseResult := BPSmalltalkGrammar 
					match: aText asString
					startingFrom: #MethodDeclaration.

	^ parseResult succeeded 
		ifTrue: [self reformat: aText basedOn: (self extractIntervals value: parseResult)]
		ifFalse: [super privateFormat: aText"Error signal: 'parse failed'"].
		
	