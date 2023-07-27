tests
testTracingExecutesMethodOnTheConstructedReceiver

	| example result |
	example := (BPTestManuallyInstrumentedClass>>#actualMethodWithAReceiver) bpExamples first.
	result := example executeSynchronously.
	self assert: 22 equals: result.
	