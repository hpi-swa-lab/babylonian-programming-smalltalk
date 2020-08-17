private
backgroundCompileInstrumentedVersionOf: aCue basedOn: parseResult

	| instrumentedMethod newCode |
	[newCode := self rewriteToSource: parseResult.
	instrumentedMethod := aCue getClass compile: newCode.
	(aCue getClass >> instrumentedMethod) runExamples.] 
		forkAt: Processor userBackgroundPriority	
	
	