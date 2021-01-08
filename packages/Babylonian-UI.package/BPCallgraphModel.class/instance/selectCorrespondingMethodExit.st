menu
selectCorrespondingMethodExit
	
	| entry |
	entry := self getSelectedEntry.
	self assert: (entry class == BPCallgraphEntryEnter or: [entry class == BPCallgraphEntryContextJumpHelper]) .
	
	callgraph 
		detect: [:each | (each class == BPCallgraphEntryExit) 
			and: [each getClass == entry getClass] 
			and: [each getSelector == entry getSelector]
			and: [each getBlockIdx == 1] 
			and: [each getInvocationCount == entry getInvocationCount]] 
		after: entry
		ifFound: [:each | self selectEntry: each]
		ifNone: [UIManager default inform: 'Method exit not found']