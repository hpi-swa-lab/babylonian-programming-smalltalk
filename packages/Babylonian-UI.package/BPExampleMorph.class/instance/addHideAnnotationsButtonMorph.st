private - ui
addHideAnnotationsButtonMorph

	hideAnnotationsButton := IconicButton new.
	hideAnnotationsButton
		name: #hideAnnotationsButton;
		labelGraphic: self currentEyeIcon;
		balloonText: self hideAnnotationsBalloonText;
		color: Color transparent;
		borderWidth: 0;
		extent: hideAnnotationsButton extent;
		actionSelector: #hideAnnotationsButtonClicked;
		target: self.
	self addMorphBack: hideAnnotationsButton.