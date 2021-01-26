initialize-release
initializeFromPragma: aPragma
	
	super initializeFromPragma: aPragma.

	aPragma bpAsDictionary 
		at: #self ifPresent: [:receiverConstructor | self receiverConstructor: receiverConstructor];
		at: #with ifPresent: [:argumentScripts | self argumentScripts: argumentScripts].