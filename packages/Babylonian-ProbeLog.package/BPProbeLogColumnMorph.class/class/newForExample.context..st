initialize-release
newForExample: aBPExample context: aBPProbeLogContext

	^ self new
		context: aBPProbeLogContext;
		example: aBPExample;
		visualize;
		yourself.
		