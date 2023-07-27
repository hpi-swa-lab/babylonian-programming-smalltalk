tests - referencing examples
testReferencingExampleRunsTheOtherExample

	| example referencingExample |
	example := self createExamples first.
	referencingExample := self createExamples third.
	self assert: 2 equals: referencingExample executeSynchronously.