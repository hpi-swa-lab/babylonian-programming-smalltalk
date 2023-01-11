tests - referencing examples
testReferencingExampleShowTheNamesOfTheReferencedOne

	| example referencingExample |
	example := self createExamples first.
	referencingExample := self createExamples third.
	self assert: example exampleName equals: referencingExample referencedExampleName.