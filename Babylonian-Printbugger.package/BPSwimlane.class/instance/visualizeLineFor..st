private
visualizeLineFor: aTraceValue
	
	|name valueMorph blockMorph button|
	"name := aProbe label asMorph." self flag: #todo. "get the actual label"
	name:= aTraceValue belongingProbeId asMorph.
	valueMorph := aTraceValue asValueMorph.
	blockMorph := Morph new 
						color: Color gray;
						extent: (14@(valueMorph height + 20)).
	button := self newHaltButtonFor: aTraceValue.
	
	^ Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		cellPositioning: #center;
		vResizing: #shrinkWrap;
		cellInset: 10@0;
		addAllMorphsBack: {blockMorph. button. name. valueMorph.};
		yourself.