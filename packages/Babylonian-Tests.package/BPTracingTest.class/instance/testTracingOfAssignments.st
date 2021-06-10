tests
testTracingOfAssignments

	| result example traceRecord |
	example := BPMethodExample new.
	result := [BPTestManuallyInstrumentedClass new methodWithAssignment] bpTraceForExample: example.
	self assert: (result valuesForProbeId: 1) notEmpty.

	traceRecord := (result valuesForProbeId: 1) first.
	self 
		assert: 2 equals: traceRecord tracedValue;
		assert: 1 equals: traceRecord assignedVariableNames size;
		assert: 62 equals: (traceRecord previousValueOf: 'a').
	