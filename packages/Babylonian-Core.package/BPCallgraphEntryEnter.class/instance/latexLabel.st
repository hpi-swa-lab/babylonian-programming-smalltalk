as yet unclassified
latexLabel
	
	^ String streamContents: [:s |
		s
			nextPutAll: '\lstinline{';
			nextPutAll: class asString;
			nextPutAll: '} \\ \lstinline{';
			nextPutAll: selector.
		blockIndex > 1 ifTrue: [
			s
				nextPutAll: ' [';
				nextPutAll: (blockIndex - 1) asString;
				nextPut: $]].
		s nextPutAll: '}']