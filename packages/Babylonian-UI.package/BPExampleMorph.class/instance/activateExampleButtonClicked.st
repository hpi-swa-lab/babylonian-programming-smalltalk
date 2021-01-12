actions
activateExampleButtonClicked
	
	self example toggleIsActive.
	self example isActive ifTrue: [
		self example traceInBackground].
	