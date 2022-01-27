private -ui 
newExampleSelectionButtonLabel

	^ self examples size = 1 
		ifTrue: ['add']
		ifFalse: ['select']