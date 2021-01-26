private - ui
newSpecimenSelectionButtonOnClick: aBlock
	
	^ IconicButton new
		height: self iconSize * 0.7;
		labelGraphic: (BPIcons linkIcon scaledToSize: self iconSize * 0.7);
		color: self color;
		borderWidth: 0;
		target: aBlock;
		actionSelector: #value;
		yourself