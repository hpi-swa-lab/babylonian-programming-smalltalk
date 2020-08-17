tests
testExamplesMigrateTheirTraceRegistryEntries

	| examples someTrace |
	BPTraces value: BPTraceRegistry new during: [
		examples := self createExamples.
		someTrace := BPTrace new.
		BPTraces value at: examples first exampleReference put: someTrace.
		examples first exampleName: 'some otherName'.
		self assert: someTrace equals: (BPTraces value at: examples first exampleReference) ]