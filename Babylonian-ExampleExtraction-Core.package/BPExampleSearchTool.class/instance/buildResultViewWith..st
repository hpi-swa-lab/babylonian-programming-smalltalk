toolbuilder
buildResultViewWith: aBuilder
	
	| panelSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec children: OrderedCollection new.
	panelSpec children add: (aBuilder pluggableListSpec new 
		model: self;
		list: #searchResults; 
		getIndex: #searchResultIndex;
		setIndex: #searchResultIndex:).
	panelSpec children add: (PluggableTextSpec new).
	panelSpec layout: #horizontal.
	^panelSpec