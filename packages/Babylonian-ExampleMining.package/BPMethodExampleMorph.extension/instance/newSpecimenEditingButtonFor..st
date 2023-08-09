*Babylonian-ExampleMining-Core
newSpecimenEditingButtonFor: specimenConstructor

	^ (self newSpecimenSelectionButtonOnClick: [(self example resolveLiveSpecimen: specimenConstructor) inspect])
		labelGraphic: (BPIcons settingsIcon scaledToSize: self iconSize * 0.7);
		balloonText: 'Click to edit live specimen'; 
		yourself