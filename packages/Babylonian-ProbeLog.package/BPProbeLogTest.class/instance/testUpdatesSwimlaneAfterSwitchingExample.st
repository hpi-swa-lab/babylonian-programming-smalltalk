tests
testUpdatesSwimlaneAfterSwitchingExample

	| columnMorph |
	self initExamplesWithoutAnnotations.
	probelog updateFrom: {example1}.
	self assert: 2 equals: probelog submorphs size.
	columnMorph := probelog findDeeplyA: BPProbeLogColumnMorph.
	self assert: example1 uniqueIdentifier equals: columnMorph example uniqueIdentifier.
	columnMorph example: example2.
	self assert: example2 uniqueIdentifier equals: columnMorph example uniqueIdentifier.