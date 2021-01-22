code pane
compileMessage: aText notifying: aController
	
	"Wrapped to allow for re-instrumenting methods that already have been instrumented"
	| oldMethod result instrument enable |
	oldMethod := self compiledMethod.
	instrument := enable := false.
	(BPConfigureInstrumentation packagesToInstrument includes: self selectedSystemCategory) 
		ifTrue: [instrument := enable := true]
		ifFalse: [
			oldMethod ifNotNil: [
				instrument := BPByteCodeRewriter hasTracing: oldMethod.
				enable := BPByteCodeRewriter hasActiveTracing: oldMethod]].
	
	enable 
		ifTrue: [result := #bpCallgraph withLayerDo: [
					super compileMessage: aText notifying: aController].
				instrument ifTrue: [
					BPByteCodeRewriter 
							enableTracingForClass: oldMethod methodClass
							selector: oldMethod selector]]
		ifFalse: [result := super compileMessage: aText notifying: aController].
	
	sidebar changed: #visualizationMorphs.
	^ result