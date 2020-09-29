private - ui
newHaltButtonFor: aTrace
	
	| exploreButton |
	exploreButton := IconicButton new.
	exploreButton 
		labelGraphic: (BPIcons pauseIcon scaledToSize: self iconSize);
		color: Color transparent;
		borderWidth: 0;
		extent: (exploreButton extent x * 0.9)@(exploreButton extent y + self scrollBarSize).
	exploreButton 
		actionSelector: #haltButtonClickedFor:and:;
		arguments: {self id . aTrace example};
		target: self.	
	^ exploreButton