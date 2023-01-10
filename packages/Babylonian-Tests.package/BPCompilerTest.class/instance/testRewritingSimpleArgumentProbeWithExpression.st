tests - annotations - arguments
testRewritingSimpleArgumentProbeWithExpression
	
	self 
		assertCompilerRewrites: 
'methodWithOneArgument: "<bpProbe expression: [2]  id: 1>"argument1"</bpProbe>"
	^ argument1 + 3'
		to:
'methodWithOneArgument: argument1
	<layer: #bpInstrumented>
	(self bpTrace: [argument1] through: [  2 ] forProbe: 1 inContext: thisContext).
^ argument1 + 3'