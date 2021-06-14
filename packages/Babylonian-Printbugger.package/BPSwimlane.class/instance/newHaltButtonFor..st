private
newHaltButtonFor: aTraceValue
	
	| exploreButton |	
	
	exploreButton := BPIconicButton newHaltButtonOfSize: (self iconSize) andExtentOffsetX: self scrollBarSize.

	exploreButton 
		actionSelector: #haltButtonClickedFor:and:;
		arguments: {aTraceValue . example};
		target: self;
		balloonText: 'click to open a debugger at the first invocation of this expression'.
	^ exploreButton