actions
removeButtonClicked
	
	self example isActive: false.
	
	self flag: #todo. "-- clean the following line up"
	self owner exampleAnnotations remove: self annotation.
	
	self containingBrowser saveMethodWithExamples.
	self abandon.