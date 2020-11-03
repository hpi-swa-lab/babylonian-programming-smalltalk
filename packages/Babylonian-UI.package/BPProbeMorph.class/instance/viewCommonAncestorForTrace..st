private - ui
viewCommonAncestorForTrace: aTrace
	
	| ancestor callgraph |
	callgraph := aTrace example traceWithCallgraphUsingByteCodeTracer eventsForTree.
	ancestor := callgraph commonAncestorOf: (callgraph select: [:each |
		(each isKindOf: BPCallgraphEntryBPProbeOrAssertion) and: [each id == self id]]) ignoringInvocationCounts: false.
	
	ancestor 
		ifNil: [UIManager default inform: 'Probe hits have no single common ancestor']
		ifNotNil: [self containingBrowser sidebarShowMethod: ancestor methodReference]