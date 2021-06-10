private
visualizeLineFor: aTraceValue
	
	|name valueMorph barMorph|
	"name := aProbe label asMorph." self flag: #todo. "get the actual label"
	name:= aTraceValue belongingProbeId asMorph.
	valueMorph := aTraceValue asValueMorph.
	barMorph := Morph new 
						color: Color gray;
						extent: (14@(valueMorph fullBounds height + 20)).
	
	^ Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		cellPositioning: #center;
		vResizing: #shrinkWrap;
		cellInset: 10@0;
		addAllMorphsBack: {barMorph. name. valueMorph.};
		yourself.