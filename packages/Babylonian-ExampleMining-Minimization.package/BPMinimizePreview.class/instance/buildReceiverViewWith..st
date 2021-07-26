toolbuilder
buildReceiverViewWith: aBuilder
	
	| panelSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec children: OrderedCollection new.
	panelSpec children add: (self explorerSpecFor: #receiver).
	panelSpec children add: (self explorerSpecFor: #miniReceiver).
	panelSpec layout: #horizontal.
	^panelSpec