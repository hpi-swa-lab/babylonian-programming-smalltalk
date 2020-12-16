tests
testExamplesKnowTheirOriginalMethod

	self 
		assert: ((method respondsTo: #baseMethod) ifTrue: [method baseMethod] ifFalse: [method])
		equals: method bpExamples first method.