tests - referencing examples
testReferencingExampleHasItsOwnActiveState

	| example referencingExample |
	example := self createExamples first.
	referencingExample := self createExamples third.
	referencingExample isActive: true.
	self assert: example isActive not.