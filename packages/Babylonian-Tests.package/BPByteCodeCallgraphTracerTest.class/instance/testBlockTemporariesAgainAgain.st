as yet unclassified
testBlockTemporariesAgainAgain
	
	self withFixtureInstrumentedAssertBlock: [:b | b blockTemporariesAgainAgainTest] generatesTrace: '
BPCallGraphByteCodeFixture >> blockTemporariesAgainAgainTest ctx: 1
	BPCallGraphByteCodeFixture >> blockTemporariesAgainAgainTest [1] ctx: 1
	_ BPCallGraphByteCodeFixture >> blockTemporariesAgainAgainTest [1] ctx: 1
^ BPCallGraphByteCodeFixture >> blockTemporariesAgainAgainTest ctx: 1'