toolbuilder
buildSpecimenViewWith: aBuilder
	<exampleNamed: 'some example 8' self: #(#object #'e5ff401d-640f-d946-85c4-1a6a8e943abc') with: #(#object #'2a27bc5a-3ee1-3a41-b860-b4d514a7beef')>
	<exampleNamed: 'some example 79' self: '' with: ''>
	| panelSpec buttonPanelSpec buttonSpec |
	panelSpec := aBuilder pluggablePanelSpec new.
	panelSpec children: OrderedCollection new.
	buttonPanelSpec := aBuilder pluggablePanelSpec new.
	buttonPanelSpec children: OrderedCollection new.
	
	buttonSpec := aBuilder pluggableActionButtonSpec new
		model: self;
		label: 'inspect';
	 	action: #inspectSpecimen;
	 	help: 'Inspect Specimen';
		yourself.
	buttonPanelSpec children add: buttonSpec.
	
	buttonSpec := aBuilder pluggableActionButtonSpec new
		model: self;
		label: 'explore';
		action: #exploreSpecimen;
		help: 'Explore Specimen';
		yourself.
	buttonPanelSpec children add: buttonSpec.
	
	buttonSpec := aBuilder pluggableActionButtonSpec new
		model: self;
		label: 'delete';
		action: #removeSpecimen;
		help: 'Removes the Specimen from the SpecimenRegistry and closes the editor.';
		yourself.
	buttonPanelSpec children add: buttonSpec.
	
	panelSpec children add: buttonPanelSpec.
	panelSpec children add: (self buildSpecimenExplorerWith: aBuilder).
	
	panelSpec layout: #vertical.
	buttonPanelSpec layout: #horizontal.
	^panelSpec