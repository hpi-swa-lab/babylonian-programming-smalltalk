private - ui
newExampleSelectionButtonMorph

	^ (MorphicToolBuilder default buildPluggableButton: 
		(ToolBuilder default pluggableActionButtonSpec new
			model: self;
			label: 'switch';
			style: #menuButton;
			action: [self offerExampleSelectionMenu];
			help: 'Determines the example which trace is displayed in this lane.';
			yourself))
		extent: 40@20;
		hResizing: #rigid;
		vResizing: #rigid;
		yourself