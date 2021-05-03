as yet unclassified
withFixtureInstrumentedAssertBlock: aBlock generatesTrace: aString
	
	BPByteCodeRewriter 
		setup; 
		instrumentClass: BPCallGraphByteCodeFixture;
		instrumentClass: BPCallGraphByteCodeFixtureWithBPCompiler;
		enableTracingForClass: BPCallGraphByteCodeFixture;
		enableTracingForClass: BPCallGraphByteCodeFixtureWithBPCompiler.
	[ | t b bb |
		b := BPCallGraphByteCodeFixture new.
		bb := BPCallGraphByteCodeFixtureWithBPCompiler new.
		
		t := BPByteCodeCallgraphTracer new.
		BPByteCodeCallgraphTracer value: t during: [aBlock cull: b cull: bb].
		
		self assert: aString withBlanksTrimmed 
			equals: t eventsToStringForTest withBlanksTrimmed
	] ensure: [
		BPByteCodeRewriter
			uninstrumentClass: BPCallGraphByteCodeFixture;
			uninstrumentClass: BPCallGraphByteCodeFixtureWithBPCompiler]