list bottom
bottomIconFor: entry
	
	^ nil "(entry respondsTo: #icon) ifTrue: [entry icon] ifFalse: [nil]"