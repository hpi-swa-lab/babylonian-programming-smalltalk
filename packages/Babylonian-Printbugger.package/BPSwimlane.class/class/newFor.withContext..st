initialize-release
newFor: aBPExample withContext: aBPPrintbuggerContext
	
	^ self new
		example: aBPExample;
		context: aBPPrintbuggerContext;
		visualize;
		yourself