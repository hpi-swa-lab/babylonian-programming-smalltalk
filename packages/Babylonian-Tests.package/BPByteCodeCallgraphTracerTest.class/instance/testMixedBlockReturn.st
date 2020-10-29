as yet unclassified
testMixedBlockReturn
	
	"test behavior when a block both blockReturns as well as methodReturns. This can happen when an ifTrue:ifFalse: block is inlined."
	self withFixtureInstrumentedAssertBlock: [:b | b mixedBlockReturnTest: true] generatesTrace: '
BPCallGraphByteCodeFixture >> mixedBlockReturnTest: ctx: 1
	BPCallGraphByteCodeFixture >> mixedBlockReturnTest: [1] ctx: 1
	^ BPCallGraphByteCodeFixture >> mixedBlockReturnTest: [1] ctx: 1'.
	
	self withFixtureInstrumentedAssertBlock: [:b | b mixedBlockReturnTest: false] generatesTrace: '
BPCallGraphByteCodeFixture >> mixedBlockReturnTest: ctx: 1
	BPCallGraphByteCodeFixture >> mixedBlockReturnTest: [1] ctx: 1
	_ BPCallGraphByteCodeFixture >> mixedBlockReturnTest: [1] ctx: 1
^ BPCallGraphByteCodeFixture >> mixedBlockReturnTest: ctx: 1'