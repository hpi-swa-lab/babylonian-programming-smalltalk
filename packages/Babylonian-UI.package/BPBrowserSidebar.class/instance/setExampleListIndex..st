example selection
setExampleListIndex: aNumber
	
	exampleListIndex := aNumber.
	self changed: #getExampleListIndex.
	self changed: #visualizationMorphs