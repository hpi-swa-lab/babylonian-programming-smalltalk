accessing
example: anExample
	
	(anExample isNil or: [anExample currentCallgraph isNil])
		ifTrue: [(self future: 100 "ms") example: anExample]
		ifFalse: ["done with temporal recursion"
			super example: anExample.
			self 
				resetCache;
				changed: #topLabels;
				changed: #bottomLabels.]
	