menu
selectOriginalCall
	
	callgraph 
		detect: [:each | each class == BPCallgraphEntryEnter and: [each equalsClassSelectorBlockIdxInvocation: self getSelectedEntry]] 
		before: self getSelectedEntry 
		ifFound: [:entry | self selectEntry: entry]
		ifNone: [self error: 'should never happen']