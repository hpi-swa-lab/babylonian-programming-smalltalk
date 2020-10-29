as yet unclassified
label
	
	^ String streamContents: [:s |
		s
			nextPutAll: class asString;
			nextPutAll: ' #';
			nextPutAll: selector.
		blockIndex > 1 ifTrue: [
			s
				nextPutAll: ' [';
				nextPutAll: (blockIndex - 1) asString;
				nextPut: $]].
		s
			tab;
			nextPutAll: 'ctx: '; 
			nextPutAll: invocationCount asString]