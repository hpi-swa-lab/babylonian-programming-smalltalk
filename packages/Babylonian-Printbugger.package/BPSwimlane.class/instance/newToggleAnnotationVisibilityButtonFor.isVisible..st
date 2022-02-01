private - ui
newToggleAnnotationVisibilityButtonFor: aTraceValue  isVisible: aBoolean

	| toggleVisibilityButton |
	toggleVisibilityButton := aBoolean 
		ifTrue: [IconicButton new labelGraphic: (BPIcons moreVerticalIcon scaledToSize: self iconSize * 0.7)]
		ifFalse: [IconicButton new labelGraphic: (BPIcons moreHorizontalIcon scaledToSize: self iconSize * 0.7)].
	
	toggleVisibilityButton
		color: Color transparent;
		borderWidth: 0;
		extent: toggleVisibilityButton extent * 0.7;
		balloonText: 'click to toggle the visibility of this annotation''s values in the printbugger'.
	toggleVisibilityButton 
		actionSelector: #toggleAnnotationVisibilityButtonClicked:;
		arguments: {aTraceValue belongingAnnotationId};
		target: self.
	^ toggleVisibilityButton