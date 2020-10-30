example selection
setExampleListIndex: aNumber
	
	aNumber == exampleListIndex ifTrue: [^ self].
	exampleListIndex := aNumber.
	self changed: #getExampleListIndex.
	self changed: #visualizationMorphs