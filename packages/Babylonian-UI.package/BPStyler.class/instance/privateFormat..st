private
privateFormat: aText
	  
	| parseResult |
	self ifNoSelectedMethod: [^ super privateFormat: aText].
	
	parseResult := PEGParserBPSmalltalk new 
					match: aText asString
					startingFrom: #MethodDeclaration.
 
	^ parseResult succeeded
		ifTrue: [ [self applyAnnotationsFrom: parseResult to: aText]
					on: Error 
					do: [:anError | 
						self haltOnce. 
						super privateFormat: aText]]
		ifFalse: [self haltOnce. super privateFormat: aText]