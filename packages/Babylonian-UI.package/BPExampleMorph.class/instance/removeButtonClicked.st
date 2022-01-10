actions
removeButtonClicked

	self example isActive: false.
	self example method bpRemoveExample: self example.
	
	self containingBrowser ifNil: [self annotation removeFromMethod: self example method].