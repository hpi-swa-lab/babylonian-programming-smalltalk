private
addTracedValue: aTraceValue forAssertion: anAssertionId

	(self assertions at: anAssertionId ifAbsentPut: [OrderedCollection new]) add: aTraceValue.
	self addChronologicalPositionTo: aTraceValue forAnnotation: anAssertionId.