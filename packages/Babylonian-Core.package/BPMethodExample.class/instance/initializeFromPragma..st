initialize-release
initializeFromPragma: aPragma

	"'exampleNamed:' 'self:' 'setUp:'? 'tearDown:'? 'with:'*"
	super initializeFromPragma: aPragma.

	aPragma bpAsDictionary 
		at: #self ifPresent: [:receiverConstructor | self receiverConstructor: receiverConstructor];
		at: #with ifPresent: [:argumentScripts | self argumentScripts: argumentScripts].