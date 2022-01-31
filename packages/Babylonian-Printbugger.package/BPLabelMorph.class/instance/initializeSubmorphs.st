initialization
initializeSubmorphs

	self 
		addMorphFront: self newLabelMorph;
		addMorphBack: self newSpacer;
		addMorphBack: (self newRemoveButton extent: self height@self height)