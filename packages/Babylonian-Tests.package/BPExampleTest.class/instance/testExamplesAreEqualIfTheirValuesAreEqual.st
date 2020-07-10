tests
testExamplesAreEqualIfTheirValuesAreEqual

	| examples |
	examples := self createExamples.
	self assert: examples first = examples second
		
	