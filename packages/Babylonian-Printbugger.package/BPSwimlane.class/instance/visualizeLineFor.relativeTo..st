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
		cellInset: 5@0;
		layoutInset: self stackDepth@0;
		addAllMorphsBack: (self lineSubmorphsFor: aTraceValue relativeTo: aStackRelation);
		yourself.