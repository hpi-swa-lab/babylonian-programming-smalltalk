initialize-release
initializeFromPragma: aPragma
	
	super initializeFromPragma: aPragma.
	self flag: #todo. "Do not overwrite this method as soon as script examples are also serialized as tests. jb"
	"'scriptExampleNamed:' 'active:'? 'setUp:'? 'tearDown:'? 'expectedResult:'? 'script:'? "
	self 
		method: aPragma method;
		exampleName: aPragma arguments first.
		
	aPragma bpAsDictionary 
		at: #expectedResult ifPresent: [:newResult | self expectedResult: newResult];
		at: #script ifPresent: [:theScript | self script: theScript].