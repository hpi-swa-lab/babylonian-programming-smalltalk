private - ui
newBarMorphFor: aTraceValue relativeTo: aStackRelation withHeight: aNumber
	
	^ Morph new 
		name: #stackBar;
		color: (self colorFor: aTraceValue in: context);
		extent: ((self barWidthFor: aTraceValue relativeTo: aStackRelation)@aNumber);
		yourself.
	