toolbuilder
highlightTraceValue: aBPTraceValue id: aNumber
	
	callgraph babylonianEntries detect: [:each |
		((each respondsTo: #traceValue) and: [each traceValue == aBPTraceValue])]
		ifFound: [:entry | model selectEntry: entry].
	