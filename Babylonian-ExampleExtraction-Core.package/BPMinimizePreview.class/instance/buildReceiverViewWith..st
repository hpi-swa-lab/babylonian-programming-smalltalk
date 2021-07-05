as yet unclassified
buildReceiverViewWith: aBuilder

	| panelSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec children: OrderedCollection new.
	panelSpec children add: (self explorerSpecFor: #receiver).
	panelSpec children add: (self explorerSpecFor: #mockReceiver).
	panelSpec layout: #horizontal.
	^panelSpec