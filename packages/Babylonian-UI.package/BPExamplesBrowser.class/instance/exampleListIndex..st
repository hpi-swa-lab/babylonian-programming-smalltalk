accessing
exampleListIndex: anIndex
	
	exampleListIndex := anIndex.
	contents := anIndex ~= 0 ifTrue: [self selectedMessage] ifFalse: [''].
	self 
		changed: #exampleListIndex;
		contentsChanged