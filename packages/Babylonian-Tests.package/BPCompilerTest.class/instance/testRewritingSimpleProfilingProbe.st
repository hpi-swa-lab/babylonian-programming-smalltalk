tests - annotations
testRewritingSimpleProfilingProbe
	
	self 
		assertCompilerRewrites: 
'method
	"<bpProfilingProbe id: 1>"2 + 3"</bpProfilingProbe>"'
		to:
'method
	<layer: #bpInstrumented>
	(self bpProfile: [2 + 3] forProbe: 1 inContext: thisContext)'.