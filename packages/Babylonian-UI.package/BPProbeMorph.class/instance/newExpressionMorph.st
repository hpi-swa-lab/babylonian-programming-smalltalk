private - ui
newExpressionMorph
	
	| container expressionSource expressionFieldMorph |
	container := self newLabelContainerMorph.
		
	expressionSource := self annotation hasExpression ifTrue: [self annotation expression asString] ifFalse: [''].
	expressionSource := expressionSource copyFrom: 2 to: (expressionSource size - 1 max: 1). "Removes the square brackets"
	expressionFieldMorph := (self 
		editFieldInitialContent: expressionSource
		onChange: [:str | 
			self annotation expression: ('[{1}]' format: {str}).
			self codeContentChanged]
		onAccept: [:str | 
			self containingBrowser codeTextMorph accept]).
	expressionFieldMorph balloonText: 'Write code that transforms the value before recording.
The probed value is available via the variable `result`.'.	
		
	container addMorph: expressionFieldMorph.
	
	^ container