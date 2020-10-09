*Babylonian-Compiler
noteCompilationOf: aSelector meta: isMeta
	
	| theClass method methodHasInstalledInstrumentation sourceIsNotInstrumented |
	theClass := isMeta ifTrue: [self class] ifFalse: [self].
	method := theClass>>aSelector.

	sourceIsNotInstrumented := (BPCompiler new methodSourceRequiresBPLayers: method getSource) not.
	methodHasInstalledInstrumentation := method isContextSMethod and: [method isLayered and: [method allInvolvedLayers = #(bpInstrumented)]].
	
	(sourceIsNotInstrumented and: [methodHasInstalledInstrumentation]) ifTrue: [
		method removePartialMethod: (method partialMethodFor: #bpInstrumented)]