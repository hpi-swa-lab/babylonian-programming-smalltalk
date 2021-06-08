private - ui
newLabelMorph
	
	| container labelSource labelFieldMorph |
	container := self newLabelContainerMorph.
		
	labelSource := self annotation hasLabel ifTrue: [self annotation label] ifFalse: [''].
	labelSource := labelSource copyFrom: 2 to: (labelSource size - 1 max: 1). "Removes the quotes brackets"
	labelFieldMorph := (self 
		editFieldInitialContent: labelSource
		onChange: [:aString | 
			self annotation label: ('''{1}''' format: {aString}). "add quotes about label"
			self codeContentChanged]
		onAccept: [:str | 
			self containingBrowser codeTextMorph accept]).
	labelFieldMorph balloonText: 'Write a label that will be printed along the examples in the Printbugger.'.
	labelFieldMorph hResizing: #spaceFill.
		
	container addMorph: labelFieldMorph.
	
	^ container