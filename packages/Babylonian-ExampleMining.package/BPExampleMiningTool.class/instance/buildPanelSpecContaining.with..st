toolbuilder
buildPanelSpecContaining: aCollectionOfChildren with: aBuilder

	| panelSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec children: aCollectionOfChildren asOrderedCollection.
	panelSpec layout: #horizontal.
	^panelSpec