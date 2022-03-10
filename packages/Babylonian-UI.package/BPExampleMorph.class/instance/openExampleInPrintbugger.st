private
openExampleInPrintbugger

	| openPrintbuggers |
	openPrintbuggers := World allMorphs select: [:aMorph | aMorph isKindOf: BPPrintbugger].
	openPrintbuggers size == 1 
		ifTrue: [openPrintbuggers first addNewColumnFrontFor: self example]
		ifFalse: [BPPrintbugger openFor: {self example}]