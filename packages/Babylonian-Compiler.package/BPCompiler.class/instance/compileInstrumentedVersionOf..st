private
compileInstrumentedVersionOf: aCue

	| instrumentedMethod newCode |
	[newCode := self rewrite: aCue sourceStream contents asBPSource asString.
	instrumentedMethod := aCue getClass compile: newCode.
	(aCue getClass >> instrumentedMethod) runExamples.] 
		forkAt: Processor userBackgroundPriority