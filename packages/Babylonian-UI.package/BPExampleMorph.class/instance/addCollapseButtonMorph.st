private - ui
addCollapseButtonMorph
	
	| collapseButton |
	collapseButton := IconicButton new.
	collapseButton := collapseButton
		name: #collapseButton;
		labelGraphic: (BPIcons moreHorizontalIcon scaledToSize: self iconSize * 0.7);
		color: Color transparent;
		borderWidth: 0;
		extent: collapseButton extent * 0.7.
	collapseButton 
		actionSelector: #collapseButtonClicked;
		target: self.
	self addMorphBack: collapseButton.