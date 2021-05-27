private - ui
newLabelMorph
	
	| container labelSource labelFieldMorph |
	container := Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #topToBottom;
		vResizing: #shrinkWrap;
		hResizing: #spaceFill;
		cellPositioning: #leftCenter;
		borderWidth: 1;
		borderColor: Color black;
		layoutInset: 1;
		yourself.
		
	labelSource := self annotation hasLabel ifTrue: [self annotation label] ifFalse: [''].
	labelSource := labelSource copyFrom: 2 to: (labelSource size - 1 max: 1). "Removes the quotes brackets"
	labelFieldMorph := (self 
		editFieldInitialContent: labelSource
		onChange: [:str | 
			self annotation label: ('''{1}''' format: {str}). "add quotes about label"
			self codeContentChanged.
			]
		onAccept: [:str | 
			self containingBrowser codeTextMorph accept]).
	labelFieldMorph balloonText: 'Write a label that will be printed along the examples in the printbugger.'.	
		
	container addMorph: labelFieldMorph.
	
	^ container