private
jumpHelperFor: aContext
	
	| helper |
	helper := BPCallgraphEntryContextJumpHelper new.
	helper
		class: aContext methodClass asString
		selector: aContext selector 
		blockIdx: (aContext isClosureContext ifTrue: [self blockIdxFromContext: aContext] ifFalse: [1]) 
		invocationCount: aContext invocationCount.
	^ helper