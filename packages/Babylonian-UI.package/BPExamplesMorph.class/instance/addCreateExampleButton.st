initialization
addCreateExampleButton
	
	| addExampleButton |
	addExampleButton := SimpleButtonMorph newWithLabel: 'add an example'.
	addExampleButton 
		color: Color transparent;
		borderWidth: 0;
		hResizing: #shrinkWrap;
		layoutInset: 1;
		extent: addExampleButton extent * 0.8.
	
	addExampleButton 
		target: self;
		actionSelector: #addExampleButtonClicked. 
		
	self addMorph: addExampleButton
	