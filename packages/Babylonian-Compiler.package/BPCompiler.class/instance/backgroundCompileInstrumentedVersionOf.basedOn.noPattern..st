private
backgroundCompileInstrumentedVersionOf: aCue basedOn: parseResult noPattern: aBoolean

	| instrumentedResult newCode |
	self halt.
	newCode := self rewriteToSource: parseResult.
	SystemChangeNotifier uniqueInstance doSilently: [
		"Wann ist aCue getClass compile nicht mit BPCompiler?"
		instrumentedResult := 
			aCue getClass newCompiler compileCue: (CompilationCue
							source: newCode
							class: aCue getClass
							environment: aCue environment
							requestor: nil)
				noPattern: aBoolean
				ifFail: [^nil] ].
		"instrumentedResult := aCue getClass compile: newCode]."
	