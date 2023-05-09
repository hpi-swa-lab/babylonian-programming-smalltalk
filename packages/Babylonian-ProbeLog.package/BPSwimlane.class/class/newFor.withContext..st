initialize-release
newFor: aBPExample withContext: aBPProbeLogContext
	
	^ self new
		example: aBPExample;
		context: aBPProbeLogContext;
		visualize;
		yourself