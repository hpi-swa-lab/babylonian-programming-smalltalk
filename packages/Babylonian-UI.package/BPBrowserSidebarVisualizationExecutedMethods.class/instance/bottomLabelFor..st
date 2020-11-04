list bottom
bottomLabelFor: entry
	
	^ (entry isKindOf: BPCallgraphEntry) ifTrue: [entry label] ifFalse: [entry]