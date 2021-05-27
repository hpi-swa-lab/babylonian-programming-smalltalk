private - ui
newSpecimenEditingButtonFor: specimenConstructor
	
	^ IconicButton new
		height: self iconSize * 0.7;
		labelGraphic: (BPIcons wrenchIcon scaledToSize: self iconSize * 0.7);
		color: self color;
		borderWidth: 0;
		target: [(self example resolveLiveSpecimen: specimenConstructor) inspect];
		actionSelector: #value;
		balloonText: 'Click to open the specimen editing tool';
		yourself