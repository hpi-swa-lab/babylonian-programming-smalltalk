visualization type
getVisualizationTypes
	
	^ {
		'callgraph' -> #callgraph.
		'annotations' -> #annotations.
		'annotations with paths' -> #annotationsWithPaths.
		'method set' -> #methodSet.
		'method set with paths' -> #methodSetWithPaths
	}