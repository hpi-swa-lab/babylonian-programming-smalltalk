initialize-release
newFor: aBPExample
	
	^ self new
		example: aBPExample;
		context: BPProbeLogContext new;
		visualize;
		yourself