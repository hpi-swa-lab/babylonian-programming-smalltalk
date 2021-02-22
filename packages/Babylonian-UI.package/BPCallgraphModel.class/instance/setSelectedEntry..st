as yet unclassified
setSelectedEntry: aBPCallgraphEntry
	
	selectedEntry := aBPCallgraphEntry.
	self changed: #getSelectedEntry.
	"You want to highlight the call site of a method -> trigger this event
	self triggerEvent: #entryClicked with: aBPCallgraphEntry."