as yet unclassified
addExampleInspectMorph
	
	
	self addMorphBack: (SimpleButtonMorph new
		height: self smallFontHeight;
		color: self color;
		borderWidth: 2;
		label: 'inspect specimen';
		target: self;
		actionSelector: #inspectSpecimen;
		yourself).