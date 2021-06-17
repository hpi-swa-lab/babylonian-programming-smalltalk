private
visualizeLineFor: aTraceValue relativeTo: aStackRelation
	
	|name valueMorph barMorph button|
	"name := aProbe label asMorph." self flag: #todo. "get the actual label"
	name := self newLineNameMorphFor: aTraceValue.
	valueMorph := aTraceValue asValueMorph.
	barMorph := Morph new 
						color: (self colorFor: aTraceValue in: context);
						extent: ((self barWidthFor: aTraceValue relativeTo: aStackRelation)@(valueMorph fullBounds height + 20));
						yourself.
	button := self newHaltButtonFor: aTraceValue.
	
	^ Morph new
		name: aTraceValue chronologicalPosition asString;
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		cellPositioning: #center;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		cellInset: 10@0;
		addAllMorphsBack: {barMorph. button. name. valueMorph.};
		yourself.