private - ui
newSpecimenSelectionButtonOnClick: aBlock
	
	^ IconicButton new
		height: self iconSize * 0.7;
		labelGraphic: (BPIcons linkIcon scaledToSize: self iconSize * 0.7);
		color: self color;
		borderWidth: 0;
		target: aBlock;
		actionSelector: #value;
		balloonText: 'Click to open the live specimen tool.
It allows you to select a live object as an argument.';
		yourself