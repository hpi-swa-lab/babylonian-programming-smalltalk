private - ui
updateMorphs

	self removeAllMorphs.
	
	self 
		addActivationButtonMorph;
		addLoaderIconHolder;
		addExampleNameMorph;
		addExampleSpecificMorphs;
		addDeleteButtonMorph.
	