initialization
initializeSubmorphsIncluding: anIconicButton

	self 
		addMorphFront: (anIconicButton extent: self height@self height);
		addMorphBack: self newLabelMorph;
		addMorphBack: self newSpacer;
		addMorphBack: (self newRemoveButton extent: self height@self height)