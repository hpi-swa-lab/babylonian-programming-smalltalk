actions
highlightTraceValue: aBPTraceValue id: aNumber
	
	| idx |
	idx := self topEntries findFirst: [:each | (each isKindOf: BPCallgraphPathBabylonianTraceBased) and: [each id == aNumber]].
	idx == 0 ifTrue: [^ self].
	self topIndex: idx.
	self bottomEntries withIndexDo: [:each :i |
		((each respondsTo: #traceValue) and: [each traceValue == aBPTraceValue]) ifTrue: [^ self bottomIndex: i]].
	self bottomIndex: 0