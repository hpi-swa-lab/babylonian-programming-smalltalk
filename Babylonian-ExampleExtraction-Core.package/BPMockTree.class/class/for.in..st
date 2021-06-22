instance creation
for: anObject in: aMockForest
	
	^ self new
		forest: aMockForest;
		addRootObject: anObject;
		yourself