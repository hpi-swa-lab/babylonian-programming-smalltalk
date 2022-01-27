private -ui 
newExampleSelectionButtonMorphIn: aColumnMorph

	^ (MorphicToolBuilder default buildPluggableButton: 
		(ToolBuilder default pluggableActionButtonSpec new
			model: self;
			label: self newExampleSelectionButtonLabel;
			style: #menuButton;
			action: [self offerExampleSelectionMenuIn: aColumnMorph];
			help: 'Determines the example which trace is displayed in this lane.';
			yourself))
		extent: 40@20;
		hResizing: #rigid;
		vResizing: #rigid;
		yourself