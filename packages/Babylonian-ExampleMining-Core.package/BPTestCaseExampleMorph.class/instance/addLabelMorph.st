private - ui
addLabelMorph
	
	| label |
		
	label := SimpleButtonMorph new
		label: self labelString;
		color: Color transparent;
		borderWidth: 0;
		actionSelector: #browseMethod;
		target: self example.
	
	self addMorphBack: label.