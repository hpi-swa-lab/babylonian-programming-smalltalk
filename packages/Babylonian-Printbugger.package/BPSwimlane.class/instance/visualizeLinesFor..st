private
visualizeLinesFor: aBPExample
	
	|stackDepthsRelativeToFirstLine| 
	stackDepthsRelativeToFirstLine := self stackDepthsFor: aBPExample.
	
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
			self visualizeLineFor: aTraceValue relativeTo: (stackDepthsRelativeToFirstLine at: anIndex )]);
		yourself