as yet unclassified
callgraph

	callgraph ifNotNil: [^ callgraph].
	callgraph := self example traceWithCallgraphUsingByteCodeTracer eventsForTree.
	^ callgraph