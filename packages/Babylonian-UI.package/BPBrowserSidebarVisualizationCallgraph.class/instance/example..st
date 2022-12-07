toolbuilder
example: anExample
	
	super example: anExample.
	(anExample isNil or: [anExample currentCallgraph isNil])
		ifTrue: ["try again" (self future: 100 "ms") example: anExample]
		ifFalse: ["done with temporal recursion" 
			model callgraph: anExample currentCallgraph.
			self initializeEvents.]
	