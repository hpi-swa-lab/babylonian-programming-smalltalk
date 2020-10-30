as yet unclassified
showExample: aBPExample traceValue: aBPTraceValue
	
	self setExampleListIndex: (self getExampleList indexOf: aBPExample).
	self selectedVisualizationType == #none ifTrue: [
		self setVisualizationTypeIndex: 1].
	visualization ifNotNil: [visualization highlightTraceValue: aBPTraceValue]