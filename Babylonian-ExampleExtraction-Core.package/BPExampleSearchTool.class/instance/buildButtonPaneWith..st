toolbuilder
buildButtonPaneWith: aBuilder
	
	| panelSpec buttonSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec children: OrderedCollection new.
	
	buttonSpec := aBuilder pluggableActionButtonSpec new
		model: self;
		label: 'search';
	 	action: #search;
	 	help: 'search';
		yourself.
	panelSpec children add: buttonSpec.
	
	buttonSpec := aBuilder pluggableActionButtonSpec new
		model: self;
		label: 'add example';
		action: #addExample;
		help: 'add example to method';
		yourself.
	panelSpec children add: buttonSpec.
	
	panelSpec layout: #horizontal.
	^panelSpec