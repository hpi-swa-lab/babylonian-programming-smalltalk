toolbuilder
buildRegistryViewWith: aBuilder
	
	| panelSpec buttonSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec children: OrderedCollection new.
	panelSpec children add: (self buildRegistryExplorerWith: aBuilder).
	panelSpec layout: #vertical.
	^panelSpec