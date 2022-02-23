instance creation
newFor: aTraceValue in: aBPSwimlane

	^ self new
		color:  Color transparent;
		traceValue: aTraceValue;
		containingSwimlane: aBPSwimlane;
		initializeSubmorphs;
		yourself
		