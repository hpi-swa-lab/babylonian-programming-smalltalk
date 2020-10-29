menu
selectNextCustomEvent
	
	callgraph 
		detect: [:entry | entry isKindOf: BPCallgraphEntryCustomEvent] 
		after: self getSelectedEntry
		ifFound: [:entry | self selectEntry: entry]
		ifNone: [UIManager default inform: 'No next entry found']