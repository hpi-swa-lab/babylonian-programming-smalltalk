ui - actions
hideAnnotations

	self example hideAnnotations.
	
	hideAnnotationsButton 
		labelGraphic: (BPIcons eyeOffIcon scaledToSize: self iconSize);
		balloonText: self showAnnotationsBalloonText.