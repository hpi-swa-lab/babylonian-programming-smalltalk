ui - actions
showHiddenAnnotations

	self example showAnnotations.
	
	hideAnnotationsButton 
		labelGraphic: (BPIcons eyeIcon scaledToSize: self iconSize);
		balloonText: self hideAnnotationsBalloonText.