private
privateFormat: aText

	| parseResult |
	parseResult := BPSmalltalkGrammar 
					match: aText asString
					startingFrom: #MethodDeclaration.

	^ parseResult succeeded 
		ifTrue: [ | annotations |
			[annotations := self extractIntervals value: parseResult.
			annotations do: [:annotation | annotation methodReference: selectedMethod].
			self reformat: aText basedOn: annotations.]
				on: Error do: [:e | e signal. super privateFormat: aText]]
		ifFalse: [super privateFormat: aText].