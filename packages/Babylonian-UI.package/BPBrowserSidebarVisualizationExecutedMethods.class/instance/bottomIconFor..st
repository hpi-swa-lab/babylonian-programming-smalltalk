list bottom
bottomIconFor: entry
	
	^ (entry respondsTo: #icon) ifTrue: [entry icon] ifFalse: [nil]