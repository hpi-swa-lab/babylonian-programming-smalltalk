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
		add: 'sort by type, id, class and selector' 
			action: [self sortTopEntries: [:each | each class asString] ascending, 
				[:each | each methodReference classSymbol] ascending, [:each | each methodReference selector] ascending];
		add: 'sort by class and selector' 
			action: [self sortTopEntries: 
				[:each | each methodReference classSymbol] ascending, [:each | each methodReference selector] ascending]