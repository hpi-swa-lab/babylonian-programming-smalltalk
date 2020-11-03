comparing
equalsClassSelectorBlockIdxInvocation: aBPCallgraphEntryEnter
	
	self assert: aBPCallgraphEntryEnter class == self class.
	^ (self equalsClassSelectorBlockIdx: aBPCallgraphEntryEnter) and: [invocationCount == aBPCallgraphEntryEnter getInvocationCount]