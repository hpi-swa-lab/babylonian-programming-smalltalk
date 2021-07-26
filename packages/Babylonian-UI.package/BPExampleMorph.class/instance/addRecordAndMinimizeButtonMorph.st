private - ui
addRecordAndMinimizeButtonMorph
	
	| recordAndMinimizeButton |
	recordAndMinimizeButton := IconicButton new.
	recordAndMinimizeButton 
		labelGraphic: (BPIcons wrenchIcon scaledToSize: self iconSize * 0.7);
		color: Color transparent;
		borderWidth: 0;
		extent: recordAndMinimizeButton extent * 0.7;
		actionSelector: #recordAndMinimizeButtonClicked;
		target: self;
		balloonText: 'Record this example and open a tool with the full and minimized recording'.
	self addMorphBack: recordAndMinimizeButton.