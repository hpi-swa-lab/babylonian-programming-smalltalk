tests - referencing examples
testReferencingExampleShowTheNamesOfTheReferencedOne

	| example referencingExample |
	example := self createExamples first.
	referencingExample := self createExamples third.
	self assert: example exampleName equals: referencingExample exampleName.
	self assert: 'BPMoreTestExamplesClass>>#binarySearchIn:theElement:>>#''test name''' equals: referencingExample uniqueIdentifier.