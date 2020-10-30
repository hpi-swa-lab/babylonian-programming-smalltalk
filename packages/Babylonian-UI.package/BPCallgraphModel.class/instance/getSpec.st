as yet unclassified
getSpec
	
	^ BPCallgraphPluggableTreeSpec new
		frame: (0@0 extent: 1@1);
		roots: #rootEntries;
		getChildren: #childrenOf:;
		hasChildren: #hasChildren:;
		label: #labelOf:;
		model: self;
		setSelected: #setSelectedEntry:;
		getSelected: #getSelectedEntry;
		autoDeselect: false;
		keyPress: #key:from:event:;
		icon: #iconOf:;
		nodeClass: BPCallgraphListItemWrapper;
		menu: #menuOf:;
		doubleClick: #doubleClick:;
		columns: {
			[:listMorph | (listMorph filteredItems collect: [:item | item preferredWidthOfColumn: 1]) max + 10].
			[:listMorph | (listMorph filteredItems collect: [:item | item preferredWidthOfColumn: 2]) max].
			[:listMorph | (listMorph filteredItems collect: [:item | item preferredWidthOfColumn: 3]) max]};
		yourself