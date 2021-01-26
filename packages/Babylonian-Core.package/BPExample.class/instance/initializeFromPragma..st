initialize-release
initializeFromPragma: aPragma
	
	"'exampleNamed:' 'active:'? 'self:'? 'setUp:'? 'tearDown:'? 'expectedResult:'? 'with'*"
	self 
		method: aPragma method;
		exampleName: aPragma arguments first.
		
	aPragma bpAsDictionary 
		at: #active ifPresent: [:isActive | self isActive: isActive];
		at: #setUp ifPresent: [:newScript | self setUpScript: newScript];
		at: #tearDown ifPresent: [:newScript | self tearDownScript: newScript];
		at: #expectedResult ifPresent: [:result | self expectedResult: result].