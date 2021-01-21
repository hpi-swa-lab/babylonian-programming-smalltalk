private - ui
addExampleConfigurationButtonMorph
	
	configurationButton := IconicButton new.
	configurationButton 
		labelGraphic: (UiSilkIcons wrenchIcon scaledToSize: self iconSize * 0.7);
		color: Color transparent;
		borderWidth: 0;
		extent: configurationButton extent * 0.7.
	configurationButton 
		actionSelector: #configurationButtonClicked;
		target: self.
	self addMorphBack: configurationButton.