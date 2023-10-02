private
addTracedValue: aTraceValue forAssertion: anAssertionId

	mutex critical: [
		(self assertions at: anAssertionId ifAbsentPut: [OrderedCollection new]) add: aTraceValue].
	self addChronologicalPositionTo: aTraceValue forAnnotation: anAssertionId.
	self notifyDependents.