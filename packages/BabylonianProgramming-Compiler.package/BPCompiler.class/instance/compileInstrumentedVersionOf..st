private
compileInstrumentedVersionOf: aCue

	| instrumentedMethod newCode |
	[newCode := self rewrite: aCue sourceStream contents asString.
	instrumentedMethod := aCue getClass compile: newCode.
	((aCue getClass >> instrumentedMethod) bpExamples collect: [:example | example trace]) inspect] forkAt: Processor userBackgroundPriority