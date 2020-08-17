running
tearDown

	((BPTestManuallyInstrumentedClass >> #methodB) isKindOf: CSLayeredMethod) ifTrue: [
		(BPTestManuallyInstrumentedClass >> #methodB) becomeCompiledMethod].
	