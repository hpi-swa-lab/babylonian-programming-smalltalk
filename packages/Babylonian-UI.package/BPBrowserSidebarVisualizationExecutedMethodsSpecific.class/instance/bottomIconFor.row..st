list bottom
bottomIconFor: entry row: aNumber
	
	^ nil "(entry respondsTo: #icon) ifTrue: [entry icon] ifFalse: [nil]"