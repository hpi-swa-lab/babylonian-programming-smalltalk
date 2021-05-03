list top
topMenu: menu for: entry
	
	menu 
		add: 'browse' action: [self browseMethod: entry methodReference].
		
	((entry isKindOf: BPCallgraphEntry) or: [entry isKindOf: BPCallgraphPathPart]) ifTrue: [
		menu
			add: 'select'
			action: [self addEntryToGlobalSelection: entry]].
		
	menu
		addLine;
		add: 'sort by class, selector and block' 
			action: [self sortTopEntries: [:each | each getClass asString] ascending, #getSelector ascending, #getBlockIdx ascending];
		add: 'sort by selector and block' 
			action: [self sortTopEntries: #getSelector ascending, #getBlockIdx ascending];
		add: 'sort by block'
			action: [self sortTopEntries: #getBlockIdx ascending].