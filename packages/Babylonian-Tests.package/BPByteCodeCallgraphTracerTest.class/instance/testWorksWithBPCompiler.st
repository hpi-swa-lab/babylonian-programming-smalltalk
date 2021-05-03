as yet unclassified
testWorksWithBPCompiler
	
	self withFixtureInstrumentedAssertBlock: [:b :bb | bb foo] generatesTrace: '
BPCallGraphByteCodeFixtureWithBPCompiler >> foo ctx: 1
^ BPCallGraphByteCodeFixtureWithBPCompiler >> foo ctx: 1'