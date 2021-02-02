initialize-release
initializeFromPragma: aPragma
	
	self flag: #todo. "Do not overwrite this method as soon as script examples are also serialized as tests. jb"
	"'scriptExampleNamed:' 'active:'? 'setUp:'? 'tearDown:'? 'expectedResult:'? 'script:'? "
	self 
		method: aPragma method;
		exampleName: aPragma arguments first.
		
	aPragma bpAsDictionary 
		at: #active ifPresent: [:isActive | self isActive: isActive];
		at: #setUp ifPresent: [:newScript | self setUpScript: newScript];
		at: #tearDown ifPresent: [:newScript | self tearDownScript: newScript];
		at: #expectedResult ifPresent: [:newResult | self expectedResult: newResult];
		at: #script ifPresent: [:theScript | self script: theScript].