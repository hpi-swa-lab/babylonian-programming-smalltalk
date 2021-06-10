private - ui
newButtonMorphWithLabel: aString doOnClick: aSymbolOrString
	
	| button |
	button := IconicButton new
		labelGraphic: ((TextMorph string: aString size: BPAnnotationMorph smallFontHeight) textColor: Color lightGray; yourself) imageForm;
		yourself.
	
	button 
		color: Color transparent;
		borderWidth: 0;
		hResizing: #shrinkWrap;
		layoutInset: 1;
		extent: button extent * 0.8.
	
	button 
		target: self;
		actionSelector: aSymbolOrString. 	
	
	^ button