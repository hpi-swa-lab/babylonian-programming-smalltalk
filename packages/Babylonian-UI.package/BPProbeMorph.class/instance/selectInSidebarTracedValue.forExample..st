private - sidebar
selectInSidebarTracedValue: traceValue forExample: anExample

	| entry callgraph |
	callgraph := anExample currentCallgraph.
	entry := callgraph babylonianEntries detect: [:each | (each respondsTo: #traceValue) and: [each traceValue == traceValue]].
	BPSelectedCallgraphEntries select: entry fromCallgraph: callgraph forExample: anExample.