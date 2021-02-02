toolbuilder
buildButtonPaneWith: aBuilder

	| panelSpec buttonSpec lampSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec children: OrderedCollection new.
	
	lampSpec := BPExampleRecordingToolLampSpec new
		model: self;
		lampOff: #lampOff;
		lampOn: #lampOn;
		yourself.
	panelSpec children add: lampSpec.
	
	buttonSpec := aBuilder pluggableActionButtonSpec new
		model: self;
		label: 'toggle recording';
	 	action: #toggleRecording;
	 	help: 'Toggle Recording';
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