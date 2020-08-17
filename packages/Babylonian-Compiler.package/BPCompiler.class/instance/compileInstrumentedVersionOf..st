private
compileInstrumentedVersionOf: aCue

	| instrumentedMethod newCode originalCode parseResult |
	originalCode := aCue sourceStream contents asBPSource asString.
	parseResult := BPSmalltalkGrammar
					match: originalCode
					startingFrom: #MethodDeclaration.
	parseResult failed ifTrue: [^ false].
	
	[newCode := self rewrite: originalCode basedOn: parseResult.
	instrumentedMethod := aCue getClass compile: newCode.
	(aCue getClass >> instrumentedMethod) runExamples.] 
		forkAt: Processor userBackgroundPriority.
		
	^ true