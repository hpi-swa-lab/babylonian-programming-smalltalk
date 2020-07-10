initialization
addSelectButtonMorph

	selectButton := IconicButton new.
	selectButton 
		labelGraphic: (BPIcons listIcon scaledToSize: self iconSize * 0.8);
		color: Color transparent;
		borderWidth: 0;
		extent: selectButton extent * 0.8.
	
	selectButton 
		target: self;
		actionSelector: #selectButtonClicked. 
		
	self addMorphBack: selectButton