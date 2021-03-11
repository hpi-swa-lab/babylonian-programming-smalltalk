as yet unclassified
defineMessageFrom: aString notifying: aController
	
	"Wrapped to allow for re-instrumenting methods that already have been instrumented"
	| resultingSelector |
	(BPConfigureInstrumentation packagesToInstrument includes: self selectedSystemCategory) 
		ifTrue: [
			resultingSelector := #bpCallgraph withLayerDo: [
				super defineMessageFrom: aString notifying: aController].
			BPByteCodeRewriter 
				enableTracingForClass: self selectedClassOrMetaClass
				selector: resultingSelector]
		ifFalse: [resultingSelector := super defineMessageFrom: aString notifying: aController].

	sidebar changed: #visualizationMorphs.
	^ resultingSelector