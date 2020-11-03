menu
selectExecutionContinuation
	
	callgraph 
		detect: [:each | each class == BPCallgraphEntryContextExecutionContinuation] 
		after: self getSelectedEntry 
		ifFound: [:each | self selectEntry: each]
		ifNone: [self error: 'should never happen']