tests
testExamplesAreNotEqualIfTheirValuesAreNotEqual

	| examples |
	examples := self createExamples.
	examples first exampleName: 'b'.
	self deny: examples first = examples second.
		
	