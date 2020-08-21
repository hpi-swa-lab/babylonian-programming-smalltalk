private - ui
updateMorphs

	self removeAllMorphs.
	
	self 
		addActivationButtonMorph;
		addLoaderIconHolder;
		addExampleNameMorph;
		addReceiverConstructorMorph;
		addArgumentScriptMorphs;
		addDeleteButtonMorph.
	