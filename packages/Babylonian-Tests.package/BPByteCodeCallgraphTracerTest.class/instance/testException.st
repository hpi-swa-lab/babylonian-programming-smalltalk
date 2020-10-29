as yet unclassified
testException
	
	self withFixtureInstrumentedAssertBlock: [:b | b exceptionTest] generatesTrace: '
BPCallGraphByteCodeFixture >> exceptionTest ctx: 1
	BPCallGraphByteCodeFixture >> exceptionTest [1] ctx: 1
		BPCallGraphByteCodeFixture >> a ctx: 1
			BPCallGraphByteCodeFixture >> b ctx: 1
				BPCallGraphByteCodeFixture >> exceptionTest [2] ctx: 1
					BPCallGraphByteCodeFixture >> c ctx: 1
					^ BPCallGraphByteCodeFixture >> c ctx: 1
				_ BPCallGraphByteCodeFixture >> exceptionTest [2] ctx: 1
				--------- CONTEXT SENDER CHANGED ---------
	|> CONTINUING HERE
	BPCallGraphByteCodeFixture >> d ctx: 1
	^ BPCallGraphByteCodeFixture >> d ctx: 1
^ BPCallGraphByteCodeFixture >> exceptionTest ctx: 1'