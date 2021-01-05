comparing
equalsClassSelector: aBPCallgraphEntryEnter
	
	^ (class == aBPCallgraphEntryEnter getClass) and: [selector == aBPCallgraphEntryEnter getSelector]