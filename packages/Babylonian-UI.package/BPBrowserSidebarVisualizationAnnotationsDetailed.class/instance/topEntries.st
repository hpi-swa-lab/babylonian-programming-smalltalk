list top
topEntries
	
	self example ifNil: [^ #()].
	^ cache at: #topEntries ifAbsentPut: [(self callgraph babylonianEntries collect: #asPathPart) withoutDuplicates]