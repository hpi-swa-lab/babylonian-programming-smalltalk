as yet unclassified
addEntryToGlobalSelection: entry
	
	(entry isKindOf: BPCallgraphEntry) ifTrue: [
		BPSelectedCallgraphEntries select: entry fromCallgraph: self callgraph forExample: self example]
		ifFalse: [| entries |
			entries := self callgraph select: [:each | entry equalsCallgraphEntry: each].
			entries do: [:each | self addEntryToGlobalSelection: each]]