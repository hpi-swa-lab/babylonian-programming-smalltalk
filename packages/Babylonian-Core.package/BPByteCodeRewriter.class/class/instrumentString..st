1 - instrument
instrumentString: aString

	| compiler cue methodNode methodAndNode trailer | 
	compiler := Compiler new.
	cue := CompilationCue
		source: aString
		context: nil
		receiver: nil
		class: UndefinedObject
		environment: UndefinedObject environment
		requestor: nil.
	trailer := CompiledMethodTrailer empty.
	
	methodNode := compiler compileCue: cue noPattern: false ifFail: [self error].
	{#bpCallgraph} withLayersDo: [
			methodAndNode := CompiledMethodWithNode 
				generateMethodFromNode: methodNode 
				trailer: trailer].
	
	^ methodAndNode method