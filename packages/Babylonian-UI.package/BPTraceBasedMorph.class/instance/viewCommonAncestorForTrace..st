callgraphs
viewCommonAncestorForTrace: aTrace
	
	| ancestor callgraph children paths |
	callgraph := aTrace example currentCallgraph.
	children := callgraph select: [:each | (each isKindOf: BPCallgraphEntryBPProbeOrAssertion) and: [each id == self id]].
	children := children collect: [:each | each parent methodReference = each traceValue methodReference ifTrue: [each parent] ifFalse: [each]].
	ancestor := callgraph commonAncestorOf: children ignoringInvocationCounts: true.
	
	ancestor ifNil: [^ UIManager default inform: 'Probe hits have no single common ancestor'].
	self containingBrowser sidebarShowMethod: ancestor methodReference.
	
	paths := callgraph pathsBetween: ancestor andChildren: children.
	paths explore