tests
testUpdatesSwimlaneAfterSwitchingExample

	self initExamplesWithoutAnnotations.
	printbugger updateFrom: {example1}.
	self assert: 2 equals: printbugger submorphs size.
	self assert: example1 uniqueIdentifier equals: (printbugger submorphs first  valueOfProperty: #displayedExample) uniqueIdentifier.
	printbugger switchSelectedExampleIn: printbugger submorphs first previous: example1 new: example2.
	self assert: example2 uniqueIdentifier equals: (printbugger submorphs first  valueOfProperty: #displayedExample) uniqueIdentifier.