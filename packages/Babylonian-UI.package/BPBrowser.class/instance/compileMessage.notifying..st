code pane
compileMessage: aText notifying: aController
	
	"Wrapped to allow for re-instrumenting methods that already have been instrumented"
	| oldMethod |
	oldMethod := self compiledMethod.
	^ (BPByteCodeRewriter hasTracing: oldMethod)
		ifTrue: [| resultMethod |
			resultMethod := #bpCallgraph withLayerDo: [
				super compileMessage: aText notifying: aController].
			(BPByteCodeRewriter hasActiveTracing: oldMethod) ifTrue: [
				BPByteCodeRewriter 
					enableTracingForClass: oldMethod methodClass
					selector: oldMethod selector].
			resultMethod]
		ifFalse: [super compileMessage: aText notifying: aController]