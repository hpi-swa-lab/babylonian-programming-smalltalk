tests
testWithoutTracingTheMethodDoesNothingSpecial

	| result example |
	example := BPExample new.
	result := BPTestManuallyInstrumentedClass new methodA.
	self assert: 2 equals: result.