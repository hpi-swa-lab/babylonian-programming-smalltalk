as yet unclassified
testBlockReturn
	
	self withFixtureInstrumentedAssertBlock: [:b | b blockReturnTest] generatesTrace: '
BPCallGraphByteCodeFixture >> blockReturnTest ctx: 1
	BPCallGraphByteCodeFixture >> br_a ctx: 1
		BPCallGraphByteCodeFixture >> br_b: ctx: 1
			BPCallGraphByteCodeFixture >> br_a [1] ctx: 1
			^ BPCallGraphByteCodeFixture >> br_a [1] ctx: 1
	BPCallGraphByteCodeFixture >> br_d ctx: 1
	^ BPCallGraphByteCodeFixture >> br_d ctx: 1
^ BPCallGraphByteCodeFixture >> blockReturnTest ctx: 1'