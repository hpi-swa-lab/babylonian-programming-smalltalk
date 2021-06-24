private - ui
newBarMorphFor: aTraceValue relativeTo: aStackRelation withHeight: aNumber
	
	^ Morph new 
		color: (self colorFor: aTraceValue in: context);
		extent: ((self barWidthFor: aTraceValue relativeTo: aStackRelation)@aNumber);
		yourself.
	