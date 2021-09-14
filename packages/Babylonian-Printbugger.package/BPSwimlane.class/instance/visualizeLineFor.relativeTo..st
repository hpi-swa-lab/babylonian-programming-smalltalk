private
visualizeLineFor: aTraceValue relativeTo: aStackRelation
	
	^ Morph new
		name: aTraceValue chronologicalPosition asString;
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		cellPositioning: #center;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		cellInset: 3@1;
		addAllMorphsBack: (self lineSubmorphsFor: aTraceValue relativeTo: aStackRelation);
		yourself.