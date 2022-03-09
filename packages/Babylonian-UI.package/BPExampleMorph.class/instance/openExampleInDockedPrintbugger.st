private
openExampleInDockedPrintbugger

	(self containingBrowser sidePane allMorphs detect: [:aSubmorph | 
		aSubmorph isKindOf: BPPrintbugger]) addNewColumnFor: self example