constants
bpExamplePragmaPrefixes
	
	^ self allSubclasses 
		select: [:c | c isAbstract not]
		thenCollect: [:c | c bpExamplePragmaPrefix]