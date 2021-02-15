accessing
callgraph
	
	callgraph ifNotNil: [^ callgraph].
	^ callgraphTracer ifNotNil: [
		callgraph := callgraphTracer eventsForTree.
		"callgraphTracer := nil"]