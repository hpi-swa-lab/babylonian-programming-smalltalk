private - ui
newBarMorphFor: aTraceValue calledBy: aStackOfMethodReferences withHeight: aNumber

	
	^ Morph new
		name: #stackBar;
		color: Color transparent;
		changeTableLayout;
		listDirection: #rightToLeft;
		wrapCentering: #center;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		cellInset: 1@0;
		addAllMorphsBack: (aStackOfMethodReferences collect: [:aStackMethod |
			 self newBarMorphFor:  aStackMethod withHeight: aNumber]);
		yourself