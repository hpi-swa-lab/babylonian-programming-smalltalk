private
newHaltButtonFor: aTraceValue
	
	| exploreButton iconSize|
	self flag: #todo. "merge with same method from BPProbeMorph"
	exploreButton := IconicButton new.
	
	"create graphic"
	iconSize := TextStyle defaultFont height * 0.9.
	exploreButton 
		"labelGraphic: (BPIcons pauseIcon scaledToSize: self iconSize);"
		labelGraphic: (BPIcons pauseIcon scaledToSize: iconSize);
		color: Color transparent;
		borderWidth: 0;
		"extent: (exploreButton extent x * 0.9)@(exploreButton extent y + self scrollBarSize)."
		extent: (exploreButton extent x * 0.9)@(exploreButton extent y + (iconSize / 2.5) floor).
		
	"set action"
	exploreButton 
		actionSelector: #haltButtonClickedFor:and:;
		arguments: {aTraceValue . example};
		target: self;
		balloonText: 'click to open a debugger at the first invocation of this expression'.
	^ exploreButton