private - ui
newSpecimenEditingButtonFor: aUUIDasSymbol
		
	^ IconicButton new
		height: self iconSize * 0.7;
		labelGraphic: (BPIcons wrenchIcon scaledToSize: self iconSize * 0.7);
		color: self color;
		borderWidth: 0;
		target: [BPSpecimenEditor openFor: aUUIDasSymbol with: self example method];
		actionSelector: #value;
		balloonText: 'Click to open the specimen editing tool';
		yourself