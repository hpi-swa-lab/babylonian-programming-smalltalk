as yet unclassified
callgraph
	
	callgraph ifNotNil: [^ callgraph].
	^ callgraphTracer ifNotNil: [callgraph := callgraphTracer eventsForTree]