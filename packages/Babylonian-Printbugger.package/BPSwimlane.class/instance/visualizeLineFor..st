private
visualizeLineFor: aTraceValue
	
	|name valueMorph blockMorph|
	"name := aProbe label asMorph." self flag: #todo. "get the actual label"
	name:= aTraceValue belongingProbeId asMorph.
	valueMorph := aTraceValue asValueMorph.
	blockMorph := Morph new 
						color: Color gray;
						extent: (14@(valueMorph height + 20)).
	
	^ Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		cellPositioning: #center;
		vResizing: #shrinkWrap;
		cellInset: 10@0;
		addAllMorphsBack: {blockMorph. name. valueMorph.};
		yourself.