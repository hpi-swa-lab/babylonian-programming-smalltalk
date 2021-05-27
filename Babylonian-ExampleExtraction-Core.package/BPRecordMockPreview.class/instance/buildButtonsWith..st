as yet unclassified
buildButtonsWith: aBuilder
	
	| panelSpec buttonSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec children: OrderedCollection new.
	buttonSpec := aBuilder pluggableActionButtonSpec new
		model: self;
		label: 'add as Example';
	 	action: #addExample;
	 	help: 'Add as example';
		yourself.
	panelSpec children add: buttonSpec.
	buttonSpec := aBuilder pluggableActionButtonSpec new
		model: self;
		label: 'add Mock as Example';
	 	action: #addMockExample;
	 	help: 'Add mock as example';
		yourself.
	panelSpec children add: buttonSpec.
	panelSpec layout: #horizontal.
	^panelSpec