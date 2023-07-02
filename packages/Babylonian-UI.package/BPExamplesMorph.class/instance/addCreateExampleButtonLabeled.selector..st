initialization
addCreateExampleButtonLabeled: aLabel selector: anActionSelector
	
	| addExampleButton |
	addExampleButton := IconicButton new
		labelGraphic: (self buttonLabelGraphicFor: aLabel);
		yourself.
	
	addExampleButton 
		color: Color transparent;
		borderWidth: 0;
		hResizing: #shrinkWrap;
		layoutInset: 1;
		extent: addExampleButton extent * 0.8;
		when: #updateLabelGraphic
		send: #updateLabelGraphicOf:labeled:
		to: self
		withArguments:  {addExampleButton . aLabel}.
		
	
	addExampleButton 
		target: self;
		actionSelector: anActionSelector. 
		
	buttonBar addMorphBack: addExampleButton.
	