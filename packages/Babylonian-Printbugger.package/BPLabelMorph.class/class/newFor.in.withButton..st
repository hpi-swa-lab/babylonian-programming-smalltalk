instance creation
newFor: aTraceValue in: aBPSwimlane withButton: anIconicButton

	^ self new
		color:  Color transparent;
		traceValue: aTraceValue;
		containingSwimlane: aBPSwimlane;
		initializeSubmorphsIncluding: anIconicButton;
		yourself
		