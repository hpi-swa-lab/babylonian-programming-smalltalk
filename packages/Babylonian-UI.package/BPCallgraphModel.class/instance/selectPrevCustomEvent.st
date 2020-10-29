menu
selectPrevCustomEvent
	
	callgraph 
		detect: [:entry | entry isKindOf: BPCallgraphEntryCustomEvent] 
		before: self getSelectedEntry
		ifFound: [:entry | self selectEntry: entry]
		ifNone: [UIManager default inform: 'No prev entry found']