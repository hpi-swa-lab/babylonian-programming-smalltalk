private - ui
updateMorphs

	self removeAllMorphs.
	
	self 
		addActivationButtonMorph;
		addExampleNameMorph;
		addReceiverConstructorMorph;
		addArgumentScriptMorphs;
		addDeleteButtonMorph.
	