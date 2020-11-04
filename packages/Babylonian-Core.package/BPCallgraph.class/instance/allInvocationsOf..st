finding ancestors
allInvocationsOf: aBPCallgraphEntryEnter
	^ self select: [:each |
		each class == BPCallgraphEntryEnter and: [each equalsClassSelectorBlockIdx: aBPCallgraphEntryEnter]].