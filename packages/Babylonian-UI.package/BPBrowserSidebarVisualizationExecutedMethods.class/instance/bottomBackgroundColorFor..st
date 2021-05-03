list bottom
bottomBackgroundColorFor: entry
	

	^ (entry respondsTo: #visualizationBackgroundColor) ifTrue: [entry visualizationBackgroundColor] ifFalse: [nil]