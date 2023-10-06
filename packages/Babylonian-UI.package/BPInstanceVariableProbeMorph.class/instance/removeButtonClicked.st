actions
removeButtonClicked

	self annotation deleteLinkedProbes.

	BPClassNameToInstanceProbes value removeProbe: self annotation.
	
	self containingBrowser removeAnnotations: {self annotation}.
	
	
	