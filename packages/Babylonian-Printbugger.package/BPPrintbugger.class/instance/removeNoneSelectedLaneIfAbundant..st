private -ui 
removeNoneSelectedLaneIfAbundant: aColumnMorph

	self examples size > 1 ifTrue: [aColumnMorph abandon.
								    self removeExample: (aColumnMorph valueOfProperty: #displayedExample)].
	
	
	