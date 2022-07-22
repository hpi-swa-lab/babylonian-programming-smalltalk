private - ui
addCollapseButtonMorph

	collapseButton := IconicButton new.
	collapseButton := collapseButton
		name: #collapseButton;
		labelGraphic: (BPIcons chevronUpIcon scaledToSize: self iconSize);
		color: Color transparent;
		borderWidth: 0;
		balloonText: 'hide details of the example';
		extent: collapseButton extent * 0.7.
	collapseButton 
		actionSelector: #collapseButtonClicked;
		target: self.
	self addMorphBack: collapseButton.