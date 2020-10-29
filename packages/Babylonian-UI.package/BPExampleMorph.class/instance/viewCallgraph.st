as yet unclassified
viewCallgraph
	
	| tracer explorer |
	tracer := self example traceWithCallgraphUsingByteCodeTracer.
	explorer := BPCallgraphExplorer open.
	explorer loadFromCallgraphTracer: tracer.

	"| graph str |
	
	graph := self example traceWithCallgraphUsingSimulator.
	str := graph eventsToString.
	str toTmpFile.
	graph explore."