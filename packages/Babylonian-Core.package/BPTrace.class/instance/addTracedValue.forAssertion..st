private
addTracedValue: aTraceValue forAssertion: anAssertionid

	(self assertions at: anAssertionid ifAbsentPut: [OrderedCollection new]) add: aTraceValue.