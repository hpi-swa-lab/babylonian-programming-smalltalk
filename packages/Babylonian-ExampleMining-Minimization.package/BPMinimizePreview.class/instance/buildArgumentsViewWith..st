toolbuilder
buildArgumentsViewWith: aBuilder
	
	| panelSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec children: OrderedCollection new.
	panelSpec children add: (self explorerSpecFor: #arguments).
	panelSpec children add: (self explorerSpecFor: #miniArguments).
	panelSpec layout: #horizontal.
	^panelSpec