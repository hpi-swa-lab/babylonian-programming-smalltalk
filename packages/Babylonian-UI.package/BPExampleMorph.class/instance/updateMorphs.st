private - ui
updateMorphs

	self removeAllMorphs.
	
	self 
		addActivationButtonMorph;
		addCollapseButtonMorph;
		addAssertResultButtonMorph;
		addLoaderIconHolder;
		addExampleNameMorph;
		addExampleConfigurationButtonMorph;
		addExampleSpecificMorphs;
		addDeleteButtonMorph.