toolbuilder
buildMockingViewWith: aBuilder
	
	| panelSpec buttonPanelSpec buttonSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec children: OrderedCollection new.
	buttonPanelSpec := aBuilder pluggablePanelSpec new.
	buttonPanelSpec children: OrderedCollection new.
	
	buttonSpec := aBuilder pluggableActionButtonSpec new
		model: self;
		label: 'create mock';
	 	action: #createMock;
	 	help: 'Create a mocked version based on the given example';
		yourself.
	buttonPanelSpec children add: buttonSpec.
	
	buttonSpec := aBuilder pluggableActionButtonSpec new
		model: self;
		label: 'Use as Specimen';
		action: #useMock;
		help: 'Replace the Specimen with its mcoked version';
		yourself.
	buttonPanelSpec children add: buttonSpec.
	
	panelSpec children add: buttonPanelSpec.
	panelSpec children add: (self buildMockExplorerWith: aBuilder).
	
	panelSpec layout: #vertical.
	buttonPanelSpec layout: #horizontal.
	^panelSpec