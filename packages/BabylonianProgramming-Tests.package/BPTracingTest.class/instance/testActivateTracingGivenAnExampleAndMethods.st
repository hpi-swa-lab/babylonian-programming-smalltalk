tests
testActivateTracingGivenAnExampleAndMethods

	| result example |
	example := BPExample new.
	result := [BPTestManuallyInstrumentedClass new methodACallingB] bpTraceForExample: example andForSelectors: #(methodACallingB).
	self assert: 1 equals: (result valuesForProbeId: 10) size.
	self assert: (result valuesForProbeId: 11) isEmpty.
	
	result := [BPTestManuallyInstrumentedClass new methodACallingB] bpTraceForExample: example andForSelectors: #(methodACallingB methodB).
	self assert: 1 equals: (result valuesForProbeId: 10) size.
	self assert: 1 equals: (result valuesForProbeId: 11) size.