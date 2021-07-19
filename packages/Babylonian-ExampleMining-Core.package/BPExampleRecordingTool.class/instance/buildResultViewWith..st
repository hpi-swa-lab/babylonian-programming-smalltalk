toolbuilder
buildResultViewWith: aBuilder
	
	| panelSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec children: OrderedCollection new.
	panelSpec children add: (self buildResultsListWith: aBuilder).
	panelSpec children add: (self buildExplorerWith: aBuilder).
	panelSpec layout: #horizontal.
	^panelSpec
	