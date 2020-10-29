menu
selectCorrespondingBlockExit
	
	| entry |
	entry := self getSelectedEntry.
	self assert: (entry class == BPCallgraphEntryEnter).
	
	callgraph 
		detect: [:each | (each class == BPCallgraphEntryExit) 
			and: [each getClass == entry getClass] 
			and: [each getSelector == entry getSelector] 
			and: [each getBlockIdx == entry getBlockIdx or: [each getBlockIdx == 1 "if the method returns as a whole"]] 
			and: [each getInvocationCount == entry getInvocationCount]] 
		after: entry
		ifFound: [:each | self selectEntry: each]
		ifNone: [UIManager default inform: 'Block exit not found']