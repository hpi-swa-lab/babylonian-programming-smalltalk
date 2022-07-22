initialize-release
newForExample: aBPExample context: aBPPrintbuggerContext

	^ self new
		context: aBPPrintbuggerContext;
		example: aBPExample;
		visualize;
		yourself.
		