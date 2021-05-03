as yet unclassified
showExample: aBPExample id: aNumber traceValue: aBPTraceValue
	
	self setExampleListIndex: (self getExampleList indexOf: aBPExample).
	self selectedVisualizationType == #none ifTrue: [
		self setVisualizationTypeIndex: 1].
	visualization ifNotNil: [visualization highlightTraceValue: aBPTraceValue id: aNumber]