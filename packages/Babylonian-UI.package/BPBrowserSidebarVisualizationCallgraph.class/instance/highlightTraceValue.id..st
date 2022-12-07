toolbuilder
highlightTraceValue: aBPTraceValue id: aNumber
	
	self example ifNil: [^ true].
	self callgraph babylonianEntries detect: [:each |
		((each respondsTo: #traceValue) and: [each traceValue == aBPTraceValue])]
		ifFound: [:entry | model selectEntry: entry].
	