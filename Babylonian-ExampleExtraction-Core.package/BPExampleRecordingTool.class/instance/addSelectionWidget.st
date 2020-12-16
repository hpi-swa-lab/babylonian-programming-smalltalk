private - ui
addSelectionWidget
	
	self addMorphBack: (SimpleButtonMorph new
		"height: self smallFontHeight;
		borderWidth: 2;"
		color: Color gray;
		target: self;
		actionSelector: #selectRecording;
		label: 'select a recording to explore';
		yourself).