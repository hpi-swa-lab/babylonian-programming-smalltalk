initialize-release
newFor: aTraceValue in: aBPSwimlane calledBy: aStackOfMethodReferences withContext: aBPPrintbuggerContext

	^ self new
		traceValue: aTraceValue;
		containingSwimlane: aBPSwimlane;
		stackOfMethodReferences: aStackOfMethodReferences;
		context: aBPPrintbuggerContext;
		visualizeSubmorphs;
		yourself