toolbuilder
buildButtonsWith: aBuilder
	
	| panelSpec buttonSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec children: OrderedCollection new.
	buttonSpec := aBuilder pluggableActionButtonSpec new
		model: self;
		label: 'Add Example';
	 	action: #addExample;
	 	help: 'Add example';
		yourself.
	panelSpec children add: buttonSpec.
	buttonSpec := aBuilder pluggableActionButtonSpec new
		model: self;
		label: 'Add Minimized Example';
	 	action: #addMinimizedExample;
	 	help: 'Add minimized example';
		yourself.
	panelSpec children add: buttonSpec.
	panelSpec layout: #horizontal.
	^panelSpec