menu
selectPrevBlockCallInSameContext
	
	| selected |
	selected := self getSelectedEntry.
	callgraph 
		detect: [:entry | entry class == BPCallgraphEntryEnter and: [entry getClass == selected getClass] and: [entry getSelector == selected getSelector] and: [entry getBlockIdx == selected getBlockIdx] and: [entry getInvocationCount == selected getInvocationCount]] 
		before: selected
		ifFound: [:entry | self selectEntry: entry]
		ifNone: [UIManager default inform: 'No prev call to this block in the same context found']