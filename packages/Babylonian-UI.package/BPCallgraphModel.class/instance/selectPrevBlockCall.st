menu
selectPrevBlockCall
	
	| selected |
	selected := self getSelectedEntry.
	callgraph 
		detect: [:entry | entry class == BPCallgraphEntryEnter and: [entry getClass == selected getClass] and: [entry getSelector == selected getSelector] and: [entry getBlockIdx == selected getBlockIdx]] 
		before: selected
		ifFound: [:entry | self selectEntry: entry]
		ifNone: [UIManager default inform: 'No prev block call found']