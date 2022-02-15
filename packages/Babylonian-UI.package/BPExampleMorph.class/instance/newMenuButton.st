private - ui
newMenuButton

	| menuButton |
	menuButton := IconicButton new.
	menuButton 
		labelGraphic: (BPIcons moreHorizontalIcon scaledToSize: self iconSize * 0.7);
		color: Color transparent;
		borderWidth: 0;
		extent: menuButton extent * 0.7.
	menuButton 
		actionSelector: #offerMenuContent;
		target: self.
	^ menuButton