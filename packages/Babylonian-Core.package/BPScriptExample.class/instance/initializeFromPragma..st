initialize-release
initializeFromPragma: aPragma
	
	super initializeFromPragma: aPragma.

	aPragma bpAsDictionary 
		at: #script ifPresent: [:theScript | self script: theScript].