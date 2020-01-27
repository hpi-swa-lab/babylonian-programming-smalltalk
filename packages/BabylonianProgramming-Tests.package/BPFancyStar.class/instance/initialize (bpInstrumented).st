as yet unclassified
initialize
	<layer: #bpInstrumented>

	super initialize.
	
	(self bpTrace: [self color: Color green] forProbe: 4496039 inContext: thisContext).
	
	
	(self bpTrace: [self moreVertices; moreVertices] forProbe: 4554646 inContext: thisContext).