initialize-release
initializeFromPragma: aPragma
	
	super initializeFromPragma: aPragma.

	aPragma bpAsDictionary 
		at: #testCaseClass ifPresent: [:testCaseClassName | self testCaseClassFrom: testCaseClassName];
		at: #methodSelector ifPresent: [:methodSelector | self methodSelector: methodSelector asSymbol].