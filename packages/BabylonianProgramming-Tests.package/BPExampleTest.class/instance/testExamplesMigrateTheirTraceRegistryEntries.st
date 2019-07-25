tests
testExamplesMigrateTheirTraceRegistryEntries

	| examples |
	BPTraces value: BPTraceRegistry new during: [
		examples := self createExamples.
		BPTraces value at: examples first exampleReference put: examples first.
		examples first exampleName: 'some otherName'.
		self assert: examples first equals: (BPTraces value at: examples first exampleReference) ]