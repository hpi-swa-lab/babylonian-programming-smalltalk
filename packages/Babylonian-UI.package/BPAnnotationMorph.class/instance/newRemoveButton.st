private - ui
newRemoveButton
	
	| removeButton |
	removeButton := IconicButton new.
	removeButton 
		labelGraphic: (BPIcons xIcon scaledToSize: self iconSize * 0.7);
		color: Color transparent;
		borderWidth: 0;
		extent: removeButton extent * 0.7.
	removeButton 
		actionSelector: #removeButtonClicked;
		target: self.
	^ removeButton