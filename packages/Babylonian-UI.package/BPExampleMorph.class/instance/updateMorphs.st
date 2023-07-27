private - ui
updateMorphs

	self removeAllMorphs.
	
	self 
		addActivationButtonMorph;
		addCollapseButtonMorph;
		addAssertResultButtonMorph;
		addLoaderIconHolder;
		addExampleNameMorph;
		addMenuButtonMorph;
		addExampleSpecificMorphs;
		addRecordAndMinimizeButtonMorph;
		addDeleteButtonMorph.