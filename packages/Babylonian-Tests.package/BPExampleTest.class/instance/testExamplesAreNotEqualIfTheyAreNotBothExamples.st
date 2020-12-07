tests
testExamplesAreNotEqualIfTheyAreNotBothExamples

	| examples |
	examples := self createExamples.
	examples := {examples first . 2}.
	self deny: examples first = examples second.
		
	