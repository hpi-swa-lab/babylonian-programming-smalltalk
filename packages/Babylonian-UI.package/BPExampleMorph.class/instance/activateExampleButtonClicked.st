actions
activateExampleButtonClicked
	
	self example toggleIsActive ifTrue: [
		self example traceInBackground].
	self containingBrowser contentsChanged.