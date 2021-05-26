actions
setLabelButtonClicked
	
	self annotation label: self defaultLabel.
	self updateLabelMorphIfNecessary.
	self codeContentChanged.
	self containingBrowser codeTextMorph accept.