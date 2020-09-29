initialization
addCreateExampleButton
	
	| addExampleButton |
	addExampleButton := IconicButton new
		labelGraphic: ((TextMorph string: 'add an example' size: 8) textColor: Color lightGray; imageForm);
		yourself.
	
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
	