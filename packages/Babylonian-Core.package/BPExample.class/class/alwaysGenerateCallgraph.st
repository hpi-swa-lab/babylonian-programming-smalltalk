as yet unclassified
alwaysGenerateCallgraph
	
	
	<preference: 'always generate a callgraph when running examples'
		category: 'Babylonian'
		description: 'Whether or not to always generate a callgraph when running an example. When disabled, callgraphs need to be generated manually'
		type: #Boolean>	
	^ AlwaysGenerateCallgraph ifNil: [false]