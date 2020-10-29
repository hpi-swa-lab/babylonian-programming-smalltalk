as yet unclassified
testBlockTemporariesAgain
	
	self withFixtureInstrumentedAssertBlock: [:b | b blockTemporariesAgainTest: 2] generatesTrace: '
BPCallGraphByteCodeFixture >> blockTemporariesAgainTest: ctx: 1
	BPCallGraphByteCodeFixture >> blockTemporariesAgainTest: [1] ctx: 1
	_ BPCallGraphByteCodeFixture >> blockTemporariesAgainTest: [1] ctx: 1
	BPCallGraphByteCodeFixture >> blockTemporariesAgainTest: [1] ctx: 1
	_ BPCallGraphByteCodeFixture >> blockTemporariesAgainTest: [1] ctx: 1
^ BPCallGraphByteCodeFixture >> blockTemporariesAgainTest: ctx: 1'