initialize-release
initialize
	

	super initialize.
	
	exampleListIndex := 0.
	visualizationTypeIndex := 1.
	
	BPSelectedCallgraphEntries when: #entrySelected send: #changed: to: self with: #bottomBarText