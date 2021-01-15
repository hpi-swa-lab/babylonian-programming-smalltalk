private - ui
updateMorphs
	
	self removeAllMorphs.
	
	self 
		addActivationButtonMorph;
		addCollapseButtonMorph;
		addLoaderIconHolder;
		addExampleNameMorph;
		addExampleSpecificMorphs;
		addDeleteButtonMorph;
		addCallgraphMorphs.