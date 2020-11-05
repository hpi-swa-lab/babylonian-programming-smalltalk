bottom content
selectMatchingEntriesFromCallgraph: topEntry
	

	^ self callgraph select: [:each | each class == BPCallgraphEntryEnter and: [topEntry equalsClassSelectorBlockIdx: each]]