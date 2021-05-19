instance creation
for: anObject inMockTree: aMockTree
	
	^ self new
	mockTree: aMockTree;
	receiver: anObject