private
visualizeLinesFor: aBPExample

	| stackMethods | 
	stackMethods := self stackMethodsFor: aBPExample.
	
	"Add a wrapper to have some distance between the title morph and the values"
	^ Morph new
		color: Color transparent;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		changeTableLayout;
		listDirection: #topToBottom;
		wrapCentering: #center;
		cellPositioning: #topLeft;
		addAllMorphsBack:  (aBPExample traceValues withIndexCollect: [:aTraceValue :anIndex | 
			BPSwimlaneLineMorph 
				newFor: aTraceValue 
				in: self 
				calledBy: (stackMethods at: anIndex ) 
				withContext: context]);
		yourself