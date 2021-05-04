private - ui
addExampleConfigurationButtonMorph
	
	configurationButton := IconicButton new.
	configurationButton
		labelGraphic: (BPIcons streamlineWrenchIcon scaledToSize: self iconSize * 0.8) ;
		balloonText: 'configure the examples pre- and postscript';
		color: Color transparent;
		borderWidth: 0;
		extent: configurationButton extent * 0.7.
	configurationButton 
		actionSelector: #configurationButtonClicked;
		target: self.
	self addMorphBack: configurationButton.