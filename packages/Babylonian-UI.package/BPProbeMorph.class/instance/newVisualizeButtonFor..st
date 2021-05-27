private - ui
newVisualizeButtonFor: aTrace
	
	| visualizeButton |
	visualizeButton := IconicButton new.
	visualizeButton 
		labelGraphic: (BPIcons listIcon scaledToSize: self iconSize);
		color: Color transparent;
		borderWidth: 0;
		extent: (visualizeButton extent x * 0.9)@(visualizeButton extent y + self scrollBarSize).
		
	visualizeButton 
		actionSelector: #visualizeButtonClickedFor:;
		arguments: {aTrace};
		target: self;
		balloonText: 'click to visualize traced values of this probe'.
		
	^ visualizeButton