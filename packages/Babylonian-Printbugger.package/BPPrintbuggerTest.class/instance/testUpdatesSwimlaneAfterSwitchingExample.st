tests
testUpdatesSwimlaneAfterSwitchingExample

	| columnMorph |
	self initExamplesWithoutAnnotations.
	printbugger updateFrom: {example1}.
	self assert: 2 equals: printbugger submorphs size.
	columnMorph := printbugger findDeeplyA: BPPrintbuggerColumnMorph.
	self assert: example1 uniqueIdentifier equals: columnMorph example uniqueIdentifier.
	columnMorph example: example2.
	self assert: example2 uniqueIdentifier equals: columnMorph example uniqueIdentifier.