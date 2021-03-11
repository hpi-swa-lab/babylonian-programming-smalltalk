accessing
example: anExample
	
	anExample currentCallgraph 
		ifNil: [(self future: 100 "ms") example: anExample]
		ifNotNil: ["done with temporal recursion"
			super example: anExample.
			self 
				resetCache;
				changed: #topLabels;
				changed: #bottomLabels.]
	