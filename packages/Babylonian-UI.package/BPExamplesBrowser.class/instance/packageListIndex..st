accessing
packageListIndex: anObject
	
	packageListIndex := anObject.
	self exampleList: nil.
	self exampleListIndex: 0.
	self 
		changed: #packageListIndex;
		changed: #exampleList