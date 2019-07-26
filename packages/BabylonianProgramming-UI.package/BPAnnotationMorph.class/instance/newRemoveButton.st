private - ui
newRemoveButton
	
	| removeButton |
	removeButton := IconicButton new.
	removeButton 
		labelGraphic: (BPIcons xIcon scaledToSize: self iconSize * 0.8);
		color: Color transparent;
		borderWidth: 0;
		extent: removeButton extent * 0.8.
	^ removeButton