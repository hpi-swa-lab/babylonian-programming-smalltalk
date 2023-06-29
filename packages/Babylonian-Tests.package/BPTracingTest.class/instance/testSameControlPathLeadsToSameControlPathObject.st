tests
testSameControlPathLeadsToSameControlPathObject

	| result example path1 path2 traceValue1 traceValue2 |
	example := BPMethodExample new.
	result := [
		BPTestManuallyInstrumentedClass new methodACallingB. 
		BPTestManuallyInstrumentedClass new methodACallingB] bpTraceForExample: example.
	traceValue1 := (result valuesForProbeId: 11) first.
	traceValue2 := (result valuesForProbeId: 11) second.
	
	path1 := result pathForTraceValue: traceValue1.
	path2 := result pathForTraceValue: traceValue2.
	self assert: path1 == path2.
	