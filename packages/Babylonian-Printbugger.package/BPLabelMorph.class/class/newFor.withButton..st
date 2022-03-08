instance creation
newFor: aTraceValue withButton: anIconicButton

	^ self new
		color:  Color transparent;
		traceValue: aTraceValue;
		initializeSubmorphsIncluding: anIconicButton
		