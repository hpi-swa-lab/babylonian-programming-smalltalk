initialize-release
initializeFromPragma: aPragma
	
	"'exampleNamed:' 'setUp:'? 'tearDown:'?"
	self 
		method: aPragma method;
		exampleName: aPragma arguments first.
		
	aPragma bpAsDictionary
		at: #setUp ifPresent: [:newScript | self setUpScript: newScript];
		at: #tearDown ifPresent: [:newScript | self tearDownScript: newScript].