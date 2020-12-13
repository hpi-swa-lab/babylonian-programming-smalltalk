private - ui
addLiveSpecimenSelectionMorphFor: anEditField withTarget: aTarget
	
	
	self addMorphBack: (SimpleButtonMorph new
		height: self smallFontHeight;
		color: self color;
		borderWidth: 2;
		label: 's';
		target: aTarget;
		actionSelector: #value;
		yourself).