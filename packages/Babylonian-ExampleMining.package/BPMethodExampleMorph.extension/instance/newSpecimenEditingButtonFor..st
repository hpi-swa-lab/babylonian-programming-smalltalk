*Babylonian-ExampleMining-Core
newSpecimenEditingButtonFor: specimenConstructor

	^ (self newSpecimenSelectionButtonOnClick: [(self example resolveLiveSpecimen: specimenConstructor) inspect])
		labelGraphic: (BPIcons wrenchIcon scaledToSize: self iconSize * 0.7);
		balloonText: 'Click to open the specimen editing tool'; 
		yourself