list top
topMenu: menu for: entry
	
	menu 
		add: 'browse' action: [self browseMethod: entry methodReference];
		addLine;
		add: 'sort by class, selector and block' 
			action: [self sortTopEntries: [:each | each getClass asString] ascending, #getSelector ascending, #getBlockIdx ascending];
		add: 'sort by selector and block' 
			action: [self sortTopEntries: #getSelector ascending, #getBlockIdx ascending];
		add: 'sort by block'
			action: [self sortTopEntries: #getBlockIdx ascending]