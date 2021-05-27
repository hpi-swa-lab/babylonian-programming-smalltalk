private - ui
addRecordAndMockButtonMorph
	
	| recordAndMockButton |
	recordAndMockButton := IconicButton new.
	recordAndMockButton 
		labelGraphic: (BPIcons wrenchIcon scaledToSize: self iconSize * 0.7);
		color: Color transparent;
		borderWidth: 0;
		extent: recordAndMockButton extent * 0.7;
		actionSelector: #recordAndMockButtonClicked;
		target: self;
		balloonText: 'Record this example and open a tool with the recording & a mock'.
	self addMorphBack: recordAndMockButton.