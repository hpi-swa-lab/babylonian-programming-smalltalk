initialize-release
newIn: aProbeMorph tracing: aTrace
	^ self new 
		probeMorph: aProbeMorph;
		trace: aTrace;
		visualize;
		yourself