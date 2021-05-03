actions
sortTopEntries: aBlock
	
	self topEntries sort: aBlock.
	self changed: #topLabels