public
selectEntry: aBPCallgraphEntry
	
	self myDependents do: [:view | view selectPath: aBPCallgraphEntry path]