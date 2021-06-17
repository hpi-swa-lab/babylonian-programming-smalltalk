private - ui
newHaltButtonFor: aTrace
	
	^ (BPIconicButton newHaltButtonOfSize: (self iconSize) andExtentOffsetX: self scrollBarSize)
		actionSelector: #haltButtonClickedFor:and:;
		arguments: {self id . aTrace example};
		target: self;
		balloonText: 'click to open a debugger at the first invocation of this expression';
		yourself