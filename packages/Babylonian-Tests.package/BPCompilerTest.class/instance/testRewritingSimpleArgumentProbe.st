tests - annotations - arguments
testRewritingSimpleArgumentProbe
	
	self 
		assertCompilerRewrites: 
'methodWithOneArgument: "<bpProbe id: 1>"argument1"</bpProbe>"
	^ argument1 + 3'
		to:
'methodWithOneArgument: argument1
	<layer: #bpInstrumented>
	(self bpTraceMethodArgument: argument1 forProbe: 1 inContext: thisContext).
^ argument1 + 3'