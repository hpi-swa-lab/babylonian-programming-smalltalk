constants
bpExamplePragmaSelectors
	
	^ self subclasses gather: [:c |
		c bpExamplePragmaSelectors]