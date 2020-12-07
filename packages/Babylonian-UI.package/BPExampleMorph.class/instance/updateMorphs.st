private - ui
updateMorphs
	
	self removeAllMorphs.
	
	self 
		addActivationButtonMorph;
		addLoaderIconHolder;
		addExampleNameMorph;
		addExampleSpecificMorphs;
		addExpectecResultMorph;
		addExampleResultMorph;
		addDeleteButtonMorph.	