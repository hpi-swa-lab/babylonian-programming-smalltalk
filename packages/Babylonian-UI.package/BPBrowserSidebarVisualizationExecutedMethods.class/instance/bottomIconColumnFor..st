list bottom
bottomIconColumnFor: entry

	^ (entry isKindOf: BPCallgraphEntry) ifTrue: [2] ifFalse: [1]