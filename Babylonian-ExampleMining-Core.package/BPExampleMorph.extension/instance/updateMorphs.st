*Babylonian-ExampleMining-Core-override
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