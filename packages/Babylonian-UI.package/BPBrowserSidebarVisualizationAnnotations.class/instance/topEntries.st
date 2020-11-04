list top
topEntries
	
	^ cache at: #topEntries ifAbsentPut: [(self callgraph babylonianEntries collect: #asPathPart) withoutDuplicates]