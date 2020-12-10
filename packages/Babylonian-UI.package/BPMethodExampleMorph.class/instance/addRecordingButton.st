private - ui
addRecordingButton

	self addMorphBack: (SimpleButtonMorph new
		height: self smallFontHeight;
		color: self color;
		borderWidth: 2;
		label: 'r';
		target: self;
		actionSelector: #openRecordingTool;
		yourself)