menu
selectCorrespondingBlockEnter
	
	| entry |
	entry := self getSelectedEntry.
	self assert: (entry class == BPCallgraphEntryExit).
	
	callgraph 
		detect: [:each | (each class == BPCallgraphEntryEnter) 
			and: [each getClass == entry getClass] 
			and: [each getSelector == entry getSelector] 
			and: [each getBlockIdx == entry getBlockIdx] 
			and: [each getInvocationCount == entry getInvocationCount]] 
		before: entry
		ifFound: [:each | self selectEntry: each]
		ifNone: [UIManager default inform: 'Block enter not found']