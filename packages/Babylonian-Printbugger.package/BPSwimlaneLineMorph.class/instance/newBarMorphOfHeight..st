private - ui
newBarMorphOfHeight: aNumber

	
	^ Morph new
		name: #stackBar;
		color: Color transparent;
		changeTableLayout;
		listDirection: #rightToLeft;
		wrapCentering: #center;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		cellInset: 0@0;
		addAllMorphsBack: (stackOfMethodReferences collect: [:aStackMethod |
			 self newStackFrameMorphFor:  aStackMethod withHeight: aNumber]);
		yourself