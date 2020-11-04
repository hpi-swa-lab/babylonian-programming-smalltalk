actions
highlightTraceValue: aBPTraceValue
	
	self bottomEntries withIndexDo: [:each :i |
		((each respondsTo: #traceValue) and: [each traceValue == aBPTraceValue]) ifTrue: [^ self bottomIndex: i]].
	self bottomIndex: 0