tests
testDeletesAbundantNilExampleColumn

	self initExamplesWithoutAnnotations.
	printbugger updateFrom: {example1}.
	self assert: 2 equals: printbugger submorphs size.
	self assert: example1 uniqueIdentifier equals: (printbugger submorphs first  valueOfProperty: #displayedExample) uniqueIdentifier.
	printbugger switchSelectedExampleIn: printbugger submorphs first previous: example1 new: BPNilExample new.
	self assert: 1 equals: printbugger submorphs size.