private
visualizeLineFor: aTraceValue
	
	|name valueMorph barMorph button|
	"name := aProbe label asMorph." self flag: #todo. "get the actual label"
	name:= aTraceValue belongingProbeId asMorph.
	valueMorph := aTraceValue asValueMorph.
	barMorph := Morph new 
						color: (self colorFor: aTraceValue in: context);
						extent: (14@(valueMorph fullBounds height + 20)).
	button := self newHaltButtonFor: aTraceValue.
	
	^ Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		cellPositioning: #center;
		vResizing: #shrinkWrap;
		cellInset: 10@0;
		addAllMorphsBack: {barMorph. button. name. valueMorph.};
		yourself.