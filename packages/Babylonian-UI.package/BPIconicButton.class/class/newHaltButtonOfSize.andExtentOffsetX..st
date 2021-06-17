instance creation
newHaltButtonOfSize: aSize andExtentOffsetX: anOffset
	
	| exploreButton |
	exploreButton := IconicButton new.
	exploreButton 
		labelGraphic: (BPIcons pauseIcon scaledToSize: aSize);
		color: Color transparent;
		borderWidth: 0;
		extent: (exploreButton extent x * 0.9)@(exploreButton extent y + anOffset).
	^ exploreButton