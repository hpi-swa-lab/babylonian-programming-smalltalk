private - ui
newExampleSelectionButtonMorph

	^ (MorphicToolBuilder default buildPluggableButton: 
		(ToolBuilder default pluggableActionButtonSpec new
			model: self;
			label: 'switch';
			style: #menuButton;
			action: [BPProbeLog offerExampleSelectionMenuFor: #example:];
			help: 'Determines the example which trace is displayed in this lane.';
			yourself))
		extent: 80@20;
		hResizing: #rigid;
		vResizing: #rigid;
		yourself