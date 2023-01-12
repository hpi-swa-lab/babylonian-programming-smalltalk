initialize-release
initializeFromPragma: aPragma
	
	"'exampleNamed:' 'script:' 'setUp:'? 'tearDown:'?"
	super initializeFromPragma: aPragma.

	aPragma bpAsDictionary 
		at: #duration ifPresent: [:duration | self duration: duration asNumber].