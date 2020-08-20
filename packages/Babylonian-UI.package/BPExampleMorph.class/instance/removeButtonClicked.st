actions
removeButtonClicked

	self example isActive: false.
	self containingBrowser removeAnnotations: {self annotation}.
	