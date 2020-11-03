printing
printOn: aStream
	
	aStream 
		nextPutAll: class asString;
		nextPutAll: ' #';
		nextPutAll: selector.
		
	blockIndex > 1 ifTrue: [
		aStream 
			nextPutAll: ' [';
			nextPutAll: (blockIndex - 1) asString;
			nextPutAll: ']']