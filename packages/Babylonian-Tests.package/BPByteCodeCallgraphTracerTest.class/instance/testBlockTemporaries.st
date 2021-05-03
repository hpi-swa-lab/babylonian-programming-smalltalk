as yet unclassified
testBlockTemporaries
	
	self withFixtureInstrumentedAssertBlock: [:b | b blockTemporariesTest] generatesTrace: '
BPCallGraphByteCodeFixture >> blockTemporariesTest ctx: 1
	BPCallGraphByteCodeFixture >> blockTemporariesTest [1] ctx: 1
	_ BPCallGraphByteCodeFixture >> blockTemporariesTest [1] ctx: 1
^ BPCallGraphByteCodeFixture >> blockTemporariesTest ctx: 1'