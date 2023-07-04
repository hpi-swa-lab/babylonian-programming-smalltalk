private - ui
newButtonMorphWithLabel: aString doOnClick: aSymbolOrString
	
	| button |
	button := IconicButton new
		labelGraphic: (self buttonLabelGraphicFor: aString);
		yourself.
	
	^ button 
		color: Color transparent;
		borderWidth: 0;
		hResizing: #shrinkWrap;
		layoutInset: 1;
		extent: button extent * 0.8;
		target: self;
		actionSelector: aSymbolOrString;
		when: #updateLabelGraphic
		send: #updateLabelGraphicOf:labeled:
		to: self
		withArguments:  {button . aString};
		yourself