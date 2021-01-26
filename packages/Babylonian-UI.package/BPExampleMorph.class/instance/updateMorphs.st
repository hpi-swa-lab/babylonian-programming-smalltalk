private - ui
updateMorphs
	
	self removeAllMorphs.
	
	self 
		addActivationButtonMorph;
		addCollapseButtonMorph;
		addLoaderIconHolder;
		addExampleNameMorph;
		addExampleConfigurationButtonMorph;
		addExampleSpecificMorphs;
		addExpectedResultMorph;
		addExampleResultMorph;
		addDeleteButtonMorph.	
