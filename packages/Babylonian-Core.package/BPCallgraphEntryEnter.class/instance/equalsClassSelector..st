comparing
equalsClassSelector: aBPCallgraphEntryEnter
	
	self assert: aBPCallgraphEntryEnter class == self class.
	^ (class == aBPCallgraphEntryEnter getClass) and: [selector == aBPCallgraphEntryEnter getSelector]