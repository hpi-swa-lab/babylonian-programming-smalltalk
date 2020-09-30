instance creation
fromPragma: aPragma
	
	^ (self subclasses detect: [:c | c bpExamplePragmaSelectors includes: aPragma keyword] ifNone: [self error]) new
		initializeFromPragma: aPragma;
		yourself