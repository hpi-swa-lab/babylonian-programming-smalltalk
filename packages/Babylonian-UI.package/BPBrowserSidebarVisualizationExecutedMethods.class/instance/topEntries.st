list top
topEntries
	
	
	^ cache at: #topEntries ifAbsentPut: [((self callgraph select: [:each | each class == BPCallgraphEntryEnter]) collect: #asPathPart) withoutDuplicates]