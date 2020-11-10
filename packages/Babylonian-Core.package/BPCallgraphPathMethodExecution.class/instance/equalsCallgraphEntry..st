comparing
equalsCallgraphEntry: entry
	
	^ entry class == BPCallgraphEntryEnter and: [self equalsClassSelectorBlockIdx: entry]