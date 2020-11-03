comparing
equalsClassSelectorBlockIdx: aBPCallgraphEntryEnter

	self assert: aBPCallgraphEntryEnter class == self class.
	^ (self equalsClassSelector: aBPCallgraphEntryEnter) and: [blockIndex == aBPCallgraphEntryEnter getBlockIdx]