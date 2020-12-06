tracing
currentCallgraph
	
	self flag: #todo. "Generate callgraph on demand if it has not yet been generated"
	^ traceInformation callgraph