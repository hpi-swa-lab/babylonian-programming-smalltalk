comparing
equalsClassSelectorBlockIdxInvocation: aBPCallgraphEntryEnter
	
	^ (self equalsClassSelectorBlockIdx: aBPCallgraphEntryEnter) and: [invocationCount == aBPCallgraphEntryEnter getInvocationCount]