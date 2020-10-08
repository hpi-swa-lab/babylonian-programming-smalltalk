private - ui
newExpressionMorph
	
	| container expressionSource |
	container := Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #topToBottom;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		cellPositioning: #topLeft;
		borderWidth: 0;
		layoutInset: 1;
		yourself.
		
	expressionSource := self annotation hasExpression ifTrue: [self annotation expression asString] ifFalse: [''].
	expressionSource := expressionSource copyFrom: 2 to: (expressionSource size - 1 max: 1). "Removes the square brackets"
	container addMorph: (self 
		editFieldInitialContent: expressionSource
		onChange: [:str | 
			self annotation expression: ('[{1}]' format: {str}).
			self codeContentChanged]
		onAccept: [:str | 
			self containingBrowser codeTextMorph accept]).
	
	^ container