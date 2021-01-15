actions
exploreButtonClickedFor: aBPTrace

	| menu |
	menu := MenuMorph new.
	menu 
		title: 'traced values';
		add: 'explore' action: [((aBPTrace valuesForProbeId: self id) collect: [:v | v tracedValue]) explore];
		add: 'inspect' action: [((aBPTrace valuesForProbeId: self id) collect: [:v | v tracedValue]) inspect];
		addLine.
	
	self callgraphMenu: menu forTrace: aBPTrace. 
	menu popUpInWorld 
