initialize-release
initializeFromPragma: aPragma
	
	"'exampleNamed:' 'active:'? 'self:'? 'setUp:'? 'tearDown:'? 'with'*"
	self 
		method: aPragma method;
		exampleName: aPragma arguments first.
		
	aPragma bpAsDictionary 
		at: #active ifPresent: [:isActive | self isActive: isActive];
		at: #setUp ifPresent: [:setUpScript | self setUpScript: setUpScript];
		at: #tearDown ifPresent: [:tearDownScript | self setUpScript: tearDownScript].