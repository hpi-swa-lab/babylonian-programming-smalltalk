private - ui
newHaltButton

	^ (BPIconicButton newHaltButtonOfSize: self iconSize andExtentOffsetX: self scrollBarSize)
		actionSelector: #haltButtonClicked;
		target: self;
		balloonText: 'click to open a debugger at the first invocation of this expression';
		yourself