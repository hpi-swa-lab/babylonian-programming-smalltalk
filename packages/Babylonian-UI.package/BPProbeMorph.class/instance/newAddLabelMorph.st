private - ui
newAddLabelMorph
	
	| setLabelButton |
	setLabelButton := IconicButton new
		labelGraphic: ((TextMorph string: 'set label' size: BPAnnotationMorph smallFontHeight) textColor: Color lightGray; yourself) imageForm;
		yourself.
	
	setLabelButton 
		color: Color transparent;
		borderWidth: 0;
		hResizing: #shrinkWrap;
		layoutInset: 1;
		extent: setLabelButton extent * 0.8.
	
	setLabelButton 
		target: self;
		actionSelector: #setLabelButtonClicked. 	
	
	^ setLabelButton