initialization
addCreateExampleButtonLabeled: aLabel selector: anActionSelector
	
	| addExampleButton |
	addExampleButton := IconicButton new
		labelGraphic: ((TextMorph string: aLabel size: BPAnnotationMorph smallFontHeight) textColor: self class textColor; imageForm);
		yourself.
	
	addExampleButton 
		color: Color transparent;
		borderWidth: 0;
		hResizing: #shrinkWrap;
		layoutInset: 1;
		extent: addExampleButton extent * 0.8.
	
	addExampleButton 
		target: self;
		actionSelector: anActionSelector. 
		
	buttonBar addMorphBack: addExampleButton.
	