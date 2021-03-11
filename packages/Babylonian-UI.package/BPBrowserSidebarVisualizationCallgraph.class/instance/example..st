toolbuilder
example: anExample
	
	super example: anExample.
	anExample currentCallgraph 
		ifNil: ["try again" (self future: 500 "ms") example: anExample]
		ifNotNil: ["done with temporal recursion" model callgraph: anExample currentCallgraph]
	