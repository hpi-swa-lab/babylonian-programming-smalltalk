as yet unclassified
printOn: aStream
	
	aStream nextPutAll: self identityHash asString, ': ', self label