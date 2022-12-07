list bottom
bottomIconColumnFor: entry
	
	^ 1 "(entry isKindOf: BPCallgraphEntry) ifTrue: [2] ifFalse: [1]"