private
visualizeLineFor: aTraceValue relativeTo: aStackRelation
	
	|name valueMorph barMorph|
	"name := aProbe label asMorph." self flag: #todo. "get the actual label"
	name:= aTraceValue belongingProbeId asMorph.
	valueMorph := aTraceValue asValueMorph.
	barMorph := Morph new 
						color: (self colorFor: aTraceValue in: context);
						extent: ((self barWidthFor: aTraceValue relativeTo: aStackRelation)@(valueMorph fullBounds height + 20));
						yourself.
	
	^ Morph new
		name: aTraceValue chronologicalPosition asString;
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		cellPositioning: #center;
		vResizing: #shrinkWrap;
		cellInset: 10@0;
		addAllMorphsBack: {barMorph. name. valueMorph.};
		yourself.