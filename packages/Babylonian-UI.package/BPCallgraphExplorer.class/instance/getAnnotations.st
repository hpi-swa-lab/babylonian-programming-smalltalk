annotation list
getAnnotations
	
	^ (callgraphModel callgraph ifNil: [{}] ifNotNil: #babylonianEntries) 