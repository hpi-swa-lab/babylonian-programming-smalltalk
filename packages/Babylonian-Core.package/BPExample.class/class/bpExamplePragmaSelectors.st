constants
bpExamplePragmaSelectors
	
	"self bpExamplePragmaSelectors"
	^ self subclasses gather: [:c |
		c bpExamplePragmaSelectors]