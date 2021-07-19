toolbuilder
buildScriptButtons: aBuilder
	
	| panelSpec buttonSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec children: OrderedCollection new.
	
	buttonSpec := aBuilder pluggableActionButtonSpec new
		model: self;
		label: 'record this script';
	 	action: #recordScript;
	 	help: 'Record the script below';
		yourself.
	panelSpec children add: buttonSpec.
	
	panelSpec layout: #horizontal.
	^panelSpec
	
	