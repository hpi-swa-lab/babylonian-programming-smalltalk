tracing
deprecatedTraceWithCallgraphUsingSimulator
	
	| graph |
	graph := self deprecatedExecuteWithCallgraphUsingSimulator.
	traceInformation trace: graph trace.
	^ graph