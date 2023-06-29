private
determineControlFlowPathFor: aPathValue

	| path |
	path := aPathValue filteredStack.
	^ allPaths at: path ifAbsentPut: [
		BPControlFlowPath new
			path: path;
			yourself]