tracing
traceWithCallgraphUsingSimulator
	
	| graph |
	graph := self executeWithCallgraph.
	traceInformation trace: graph trace.
	^ graph