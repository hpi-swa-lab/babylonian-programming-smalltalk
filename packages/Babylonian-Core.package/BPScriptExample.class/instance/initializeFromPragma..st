initialize-release
initializeFromPragma: aPragma
	
	"'exampleNamed:' 'script:' 'setUp:'? 'tearDown:'?"
	super initializeFromPragma: aPragma.

	aPragma bpAsDictionary 
		at: #script ifPresent: [:theScript | self script: theScript].