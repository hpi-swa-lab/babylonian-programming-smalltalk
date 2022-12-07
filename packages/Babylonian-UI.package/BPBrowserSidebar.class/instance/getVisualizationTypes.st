visualization type
getVisualizationTypes
	
	^ {
		'callgraph' -> #callgraph.
		'probes' -> #annotations.
		'methods' -> #methodSet.
		'methods detailed' -> #methodsDetailed.
		'probes detailed' -> #annotationsDetailed.
	}