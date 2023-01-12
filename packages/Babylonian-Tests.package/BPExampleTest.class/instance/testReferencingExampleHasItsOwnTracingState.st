tests - referencing examples
testReferencingExampleHasItsOwnTracingState

	| example referencingExample |
	example := self createExamples first.
	referencingExample := self createExamples third.
	self assert: referencingExample trace ~~ example trace.