initialize-release
newFor: aTraceValue in: aBPSwimlane calledBy: aStackOfMethodReferences withContext: aBPProbeLogContext

	^ self new
		traceValue: aTraceValue;
		containingSwimlane: aBPSwimlane;
		stackOfMethodReferences: aStackOfMethodReferences;
		context: aBPProbeLogContext;
		visualizeSubmorphs;
		yourself