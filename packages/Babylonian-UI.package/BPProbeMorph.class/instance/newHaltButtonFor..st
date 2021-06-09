private - ui
newHaltButtonFor: aTrace
	
	| exploreButton |
	exploreButton := BPIconicButton newHaltButtonOfSize: (self iconSize) andExtentOffsetX: self scrollBarSize.
	exploreButton 
		actionSelector: #haltButtonClickedFor:and:;
		arguments: {self id . aTrace example};
		target: self;
		balloonText: 'click to open a debugger at the first invocation of this expression'.
	^ exploreButton