callgraph
highlightSendIn: aMethodReference at: aPC
	
	
	self browseReference: aMethodReference.
	"check whether method is umodified"
	selectedPC := {aMethodReference . aPC}.
	self changed: #contentsSelection.