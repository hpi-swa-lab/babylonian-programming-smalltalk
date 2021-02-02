initialize-release
initializeFromPragma: aPragma
	
	"'(scriptTestRef / testRef):' 'active:'? "
	| serializingMethod |
	serializingMethod := Compiler evaluate: aPragma arguments first.
	self initializeFromDeserialized: (BPDeserializer deserialize: serializingMethod);
		method: aPragma method.
		
	aPragma bpAsDictionary at: #active ifPresent: [:isActive | self isActive: isActive].