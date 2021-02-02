initialize-release
initializeFromPragma: aPragma
	
	"'testRef:' 'active:'? 'setUp:'? 'tearDown:'? / 'scriptExampleNamed:' 'active:'? 'setUp:'? 'tearDown:'? 'expectedResult:'? 'script:'? "
	| serializingMethod |
	serializingMethod := Compiler evaluate: aPragma arguments first.
	self initializeFromDeserialized: (BPDeserializer deserialize: serializingMethod);
		method: aPragma method.
		
	aPragma bpAsDictionary 
		at: #active ifPresent: [:isActive | self isActive: isActive];
		at: #setUp ifPresent: [:newScript | self setUpScript: newScript];
		at: #tearDown ifPresent: [:newScript | self tearDownScript: newScript].