constants
bpExamplePragmaPrefixes
	
	^ self subclasses collect: [:c |
		c bpExamplePragmaPrefix]