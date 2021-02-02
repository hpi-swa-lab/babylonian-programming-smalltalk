initialize-release
initializeFromPragma: aPragma
	
	"'(scriptTestRef / testRef):' 'active:'? 'setUp:'? 'tearDown:'?"
	| serializingMethod |
	serializingMethod := Compiler evaluate: aPragma arguments first.
	self initializeFromDeserialized: (BPDeserializer deserialize: serializingMethod);
		method: aPragma method.
		
	aPragma bpAsDictionary 
		at: #active ifPresent: [:isActive | self isActive: isActive];
		at: #setUp ifPresent: [:newScript | self setUpScript: newScript];
		at: #tearDown ifPresent: [:newScript | self tearDownScript: newScript].