tests
testExamplesMigrateTheirTraceRegistryEntries

	| examples |
	BPTraces value: Dictionary new during: [
		examples := self createExamples.
		BPTraces value at: examples first uniqueIdentifier put: examples first.
		examples first exampleName: 'some otherName'.
		self assert: examples first equals: (BPTraces value at: examples first uniqueIdentifier) ]