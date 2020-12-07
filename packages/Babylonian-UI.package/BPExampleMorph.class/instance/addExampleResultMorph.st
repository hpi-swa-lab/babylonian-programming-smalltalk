private - ui
addExampleResultMorph
	
	executionResultButton := SimpleButtonMorph new
		height: self smallFontHeight;
		color: self color;
		borderWidth: 2;
		actionSelector: #value;
		yourself.
	self setExecutionResultButtonContentToInitialState.
	self addMorphBack: executionResultButton.