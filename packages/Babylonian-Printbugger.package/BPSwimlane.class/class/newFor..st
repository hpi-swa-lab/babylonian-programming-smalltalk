initialize-release
newFor: aBPExample
	
	^ self new
		example: aBPExample;
		context: BPPrintbuggerContext new;
		visualize;
		yourself