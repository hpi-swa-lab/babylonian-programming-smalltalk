as yet unclassified
showReturnNodes
	
	<preference: 'show return nodes in callgraph'
		category: 'Babylonian'
		description: 'Whether or not to show return nodes in the callgraph visualization. Return nodes are not strictly necessary, but might help the understanding especially the callgraph contains lot''s of context jumps (e.g., usage of generators).'
		type: #Boolean>
	^ ShowReturnNodes ifNil: [true]