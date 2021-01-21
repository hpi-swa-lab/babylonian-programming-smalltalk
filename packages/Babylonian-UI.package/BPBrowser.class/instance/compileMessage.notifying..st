code pane
compileMessage: aText notifying: aController
	
	"Wrapped to allow for re-instrumenting methods that already have been instrumented"
	| oldMethod result |
	oldMethod := self compiledMethod.
	oldMethod ifNil: [
		^ super compileMessage: aText notifying: aController].
	(BPByteCodeRewriter hasTracing: oldMethod)
		ifTrue: [
			result := #bpCallgraph withLayerDo: [
				super compileMessage: aText notifying: aController].
			(BPByteCodeRewriter hasActiveTracing: oldMethod) ifTrue: [
				BPByteCodeRewriter 
					enableTracingForClass: oldMethod methodClass
					selector: oldMethod selector]]
		ifFalse: [result := super compileMessage: aText notifying: aController].
	sidebar changed: #visualizationMorphs.
	^ result