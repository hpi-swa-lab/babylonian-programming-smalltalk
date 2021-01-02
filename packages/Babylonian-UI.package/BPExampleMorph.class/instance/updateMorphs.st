private - ui
updateMorphs
	
	self removeAllMorphs.
	
	self 
		addActivationButtonMorph;
		addLoaderIconHolder;
		addExampleNameMorph;
		addExampleSpecificMorphs;
		addExpectedResultMorph;
		addExampleResultMorph;
		addDeleteButtonMorph.	