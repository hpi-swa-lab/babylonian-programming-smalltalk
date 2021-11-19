private
visualizeLineFor: aTraceValue calledBy: aStackOfMethodReferences

	^ Morph new
		name: aTraceValue chronologicalPosition asString;
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		cellPositioning: #center;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		cellInset: 3@0;
		addAllMorphsBack: (self lineSubmorphsFor: aTraceValue calledBy: aStackOfMethodReferences);
		yourself