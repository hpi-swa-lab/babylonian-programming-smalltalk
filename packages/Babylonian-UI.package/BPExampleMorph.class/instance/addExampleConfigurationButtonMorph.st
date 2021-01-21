private - ui
addExampleConfigurationButtonMorph
	
	configurationButton := IconicButton new.
	configurationButton 
		labelGraphic: (BPIcons wrenchIcon scaledToSize: self iconSize * 0.7) asGrayScale;
		color: Color transparent;
		borderWidth: 0;
		extent: configurationButton extent * 0.7.
	configurationButton 
		actionSelector: #configurationButtonClicked;
		target: self.
	self addMorphBack: configurationButton.