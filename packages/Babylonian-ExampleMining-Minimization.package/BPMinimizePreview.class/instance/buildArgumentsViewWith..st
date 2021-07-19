as yet unclassified
buildArgumentsViewWith: aBuilder
	
	| panelSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec children: OrderedCollection new.
	panelSpec children add: (self explorerSpecFor: #arguments).
	panelSpec children add: (self explorerSpecFor: #mockArguments).
	panelSpec layout: #horizontal.
	^panelSpec