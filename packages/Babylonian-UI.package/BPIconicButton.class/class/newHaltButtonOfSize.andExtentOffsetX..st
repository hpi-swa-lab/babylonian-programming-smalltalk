instance creation
newHaltButtonOfSize: aSize andExtentOffsetX: anOffset
	
	|button|
	button := IconicButton new.
	^ button
		labelGraphic: (BPIcons pauseIcon scaledToSize: aSize);
		color: Color transparent;
		borderWidth: 0;
		extent: (button extent x * 0.9)@(button extent y + anOffset);
		yourself