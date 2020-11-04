actions
sortBottomEntries: aBlock
	
	self bottomEntries sort: aBlock.
	self changed: #bottomLabels