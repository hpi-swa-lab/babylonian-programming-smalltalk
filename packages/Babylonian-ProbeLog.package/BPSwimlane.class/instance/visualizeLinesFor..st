private
visualizeLinesFor: aBPExample

	| stacks lineMorphs |  
	stacks := self stacksFor: aBPExample.
	
	lineMorphs := aBPExample traceValues withIndexCollect: [:aTraceValue :anIndex | 
			BPSwimlaneLineMorph 
				newFor: aTraceValue 
				in: self 
				calledBy: (stacks at: anIndex)
				withContext: context].
	 
	context stackColumns do: [:column |
		column last height: column last height - 2].
	
	"Add a wrapper to have some distance between the title morph and the values"
	^ Morph new
		color: Color transparent;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		changeTableLayout;
		listDirection: #topToBottom;
		wrapCentering: #center;
		cellPositioning: #topLeft;
		addAllMorphsBack: lineMorphs;
		yourself