instance creation
fromPragma: aPragma
	
	^ (self allSubclasses detect: [:c | c isAbstract not and: [aPragma keyword beginsWith: c bpExamplePragmaPrefix]] ifNone: [self error]) new
		initializeFromPragma: aPragma;
		yourself