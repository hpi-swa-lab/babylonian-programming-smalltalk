tests
testTracingExecutesMethodOnTheConstructedReceiver

	| example result |
	example := (BPTestManuallyInstrumentedClass>>#actualMethodWithAReceiver) bpExamples first.
	result := example execute.
	self assert: 22 equals: result.
	