comparing
equalsClassSelectorBlockIdx: aBPCallgraphEntryEnter
	
	^ (self equalsClassSelector: aBPCallgraphEntryEnter) and: [blockIndex == aBPCallgraphEntryEnter getBlockIdx]