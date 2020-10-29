menu
selectContextSenderChange
	
	callgraph 
		detect: [:each | each class == BPCallgraphEntryContextSenderChanged] 
		before: self getSelectedEntry 
		ifFound: [:each | self selectEntry: each]
		ifNone: [self error: 'should never happen']