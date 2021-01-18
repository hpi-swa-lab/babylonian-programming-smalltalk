private - ui
addAddExampleButton
	
	self addMorphBack: (SimpleButtonMorph new
		"height: self smallFontHeight;
		borderWidth: 2;"
		color: Color gray;
		target: self;
		actionSelector: #addExample;
		label: 'add Example';
		yourself).