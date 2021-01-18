as yet unclassified
buildButtonPaneWith: aBuilder

	| panelSpec buttonSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec children: OrderedCollection new.
	
	buttonSpec := aBuilder pluggableActionButtonSpec new.
	buttonSpec model: self.
	buttonSpec label: 'toggle recording'.
	buttonSpec action: #toggleRecording.
	buttonSpec help: 'Toggle Recording'.
	panelSpec children add: buttonSpec.
	
	buttonSpec := aBuilder pluggableActionButtonSpec new.
	buttonSpec model: self.
	buttonSpec label: 'add example'.
	buttonSpec action: #addExample.
	buttonSpec help: 'add example to method'.
	panelSpec children add: buttonSpec.
	panelSpec layout: #horizontal.
	^panelSpec