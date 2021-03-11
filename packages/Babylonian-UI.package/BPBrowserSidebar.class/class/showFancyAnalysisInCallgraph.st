preferences
showFancyAnalysisInCallgraph
	
	<preference: 'provide fancy analysis in callgraph visualization'
		category: 'Babylonian'
		description: 'Whether or not to provide the UI widgets to access the fancy analysis features in the callgraph visualization (e.g. find common ancestor of two selected entries).'
		type: #Boolean>
	^ ShowFancyAnalysisForCallgraph ifNil: [true]