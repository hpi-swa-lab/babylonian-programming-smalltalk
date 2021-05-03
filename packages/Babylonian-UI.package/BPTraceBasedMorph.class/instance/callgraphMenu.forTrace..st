callgraphs
callgraphMenu: menu forTrace: aTrace
	
	| example callgraph entries |
	example := aTrace example.
	callgraph := example currentCallgraph.
	entries := callgraph select: [:each | (each isKindOf: BPCallgraphEntryBPProbeOrAssertion) and: [each id == self id]].

	menu
		add: 'add to selection' action: [entries do: [:each |
			BPSelectedCallgraphEntries select: each fromCallgraph: callgraph forExample: example]];
		add: 'find ancestor and invocation paths (ignoring context)' action: [callgraph
			interactiveAncestorSearchFor: entries
			ignoringInvocationCounts: true
			browseMethodBlock: [:methodReference |
				self containingBrowser sidebarShowMethod: methodReference.
				self containingBrowser browseReference: methodReference]];
		add: 'find ancestor and invocation paths (with context)' action: [callgraph
			interactiveAncestorSearchFor: entries
			ignoringInvocationCounts: false
			browseMethodBlock: [:methodReference | 
				self containingBrowser sidebarShowMethod: methodReference.
				self containingBrowser browseReference: methodReference]]