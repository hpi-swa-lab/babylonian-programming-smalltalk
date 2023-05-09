private - ui
newBarMorphOfHeight: aNumber

	| stackFrameMorphs |
	stackFrameMorphs := stackOfMethodReferences collect: [:aStackMethod |
		self newStackFrameMorphFor: aStackMethod withHeight: aNumber].
	
	^ Morph new
		name: #stackBar;
		color: Color transparent;
		changeTableLayout;
		listDirection: #rightToLeft;
		cellPositioning: #topCenter;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		cellInset: 0@0;
		addAllMorphsBack: stackFrameMorphs;
		yourself