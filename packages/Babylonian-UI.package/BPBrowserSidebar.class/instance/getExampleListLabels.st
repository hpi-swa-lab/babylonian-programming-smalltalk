example selection
getExampleListLabels
	
	^ self getExampleList collect: [:each | each method methodClass asString, '>>#', each method selector, 
		' ', each exampleName]