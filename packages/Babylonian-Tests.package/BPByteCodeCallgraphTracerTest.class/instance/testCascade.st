as yet unclassified
testCascade
	
	self withFixtureInstrumentedAssertBlock: [:b | b cascadeTest] generatesTrace: '
BPCallGraphByteCodeFixture >> cascadeTest ctx: 1
	BPCallGraphByteCodeFixture >> c_1 ctx: 1
	^ BPCallGraphByteCodeFixture >> c_1 ctx: 1
	BPCallGraphByteCodeFixture >> c_2 ctx: 1
	^ BPCallGraphByteCodeFixture >> c_2 ctx: 1
^ BPCallGraphByteCodeFixture >> cascadeTest ctx: 1'