instance creation
fromPragma: aPragma
	
	^ (self subclasses detect: [:c | aPragma keyword beginsWith: c bpExamplePragmaPrefix] ifNone: [self error]) new
		initializeFromPragma: aPragma;
		yourself