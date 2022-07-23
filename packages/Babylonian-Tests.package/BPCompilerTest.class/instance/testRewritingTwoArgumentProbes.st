tests - annotations - arguments
testRewritingTwoArgumentProbes
	
	self 
		assertCompilerRewrites: 
'methodWithTwoArguments: argument1 and: "<bpProbe id: 1>"argument2"</bpProbe>"
	^ argument1 + 3'
		to:
'methodWithTwoArguments: argument1 and: argument2
	<layer: #bpInstrumented>
	(self bpTrace: [argument2] forProbe: 1 inContext: thisContext).
^ argument1 + 3'