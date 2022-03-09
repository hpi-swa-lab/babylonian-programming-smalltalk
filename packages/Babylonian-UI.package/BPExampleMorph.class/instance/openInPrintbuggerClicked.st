actions
openInPrintbuggerClicked

	self containingBrowser ifNil: ["do nothing, early return"].
	
	self containingBrowser sidePaneContent = #bpPrintbugger 
		ifTrue: [self openExampleInDockedPrintbugger]
		ifFalse: [self openExampleInPrintbugger].