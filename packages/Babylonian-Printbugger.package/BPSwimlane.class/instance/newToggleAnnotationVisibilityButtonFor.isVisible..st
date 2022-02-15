private - ui
newToggleAnnotationVisibilityButtonFor: aTraceValue  isVisible: aBoolean

	| toggleVisibilityButton |
	toggleVisibilityButton := aBoolean 
		ifTrue: [IconicButton new labelGraphic: (BPIcons eyeIcon scaledToSize: self iconSize * 0.7)]
		ifFalse: [IconicButton new labelGraphic: (BPIcons eyeoffIcon scaledToSize: self iconSize * 0.7)].
	
	toggleVisibilityButton
		color: Color transparent;
		borderWidth: 0;
		extent: toggleVisibilityButton extent * 0.7;
		balloonText: 'click to toggle the visibility of this annotation''s values in the printbugger'.
	toggleVisibilityButton 
		actionSelector: #toggleAnnotationVisibilityButtonClicked:;
		arguments: {aTraceValue};
		target: self.
	^ toggleVisibilityButton