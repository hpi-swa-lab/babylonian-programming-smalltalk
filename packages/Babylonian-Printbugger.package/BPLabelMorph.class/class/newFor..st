instance creation
newFor: aTraceValue

	^ self new
		color:  Color transparent;
		traceValue: aTraceValue;
		initializeSubmorphsIncluding: IconicButton new
		