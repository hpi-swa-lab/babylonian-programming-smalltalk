private - ui
addExampleSpecificMorphs
	
	self
		addMorphBack: 'extracted: ' asMorph;
		addTestNameMorph; 
		addMorphBack: '>>' asMorph;
		addMethodNameMorph;
		addMorphBack: (SimpleButtonMorph new
			height: self smallFontHeight;
			color: self color;
			borderWidth: 2;
			label: 'e';
			target: self;
			actionSelector: #findExamples;
			yourself)