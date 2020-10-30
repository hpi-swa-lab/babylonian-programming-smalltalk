as yet unclassified
highlightTraceValue: aBPTraceValue
	
	self getAnnotations withIndexDo: [:each :i |
		((each respondsTo: #traceValue) and: [each traceValue == aBPTraceValue]) ifTrue: [^ self setIndex: i]].
	self setIndex: 0