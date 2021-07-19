toolbuilder
buildResultViewWith: aBuilder
	
	| panelSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec children: OrderedCollection new.
	panelSpec children add: (aBuilder pluggableListSpec new 
		model: self;
		list: #searchResults; 
		getIndex: #searchResultIndex;
		setIndex: #searchResultIndex:;
		yourself).
	panelSpec children add: (aBuilder pluggableTextSpec new
		model: self;
		getText: #methodAsText;
		yourself).
	panelSpec layout: #horizontal.
	^panelSpec