running
tearDown
	
	((BPTestManuallyInstrumentedClass >> #methodB) isKindOf: CSLayeredMethod) ifTrue: [
		(BPTestManuallyInstrumentedClass >> #methodB) becomeCompiledMethod].
	((BPExamples value examples) includes: example1) ifTrue: [BPExamples value examples remove: example1].
	((BPExamples value examples) includes: example2) ifTrue: [BPExamples value examples remove: example2].