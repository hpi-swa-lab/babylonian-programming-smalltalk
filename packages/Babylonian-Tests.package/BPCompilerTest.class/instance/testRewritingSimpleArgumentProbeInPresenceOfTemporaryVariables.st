tests - annotations - arguments
testRewritingSimpleArgumentProbeInPresenceOfTemporaryVariables
	
	self 
		assertCompilerRewrites: 
'methodWithOneArgument: "<bpProbe id: 1>"argument1"</bpProbe>"
	| temp1 |
	^ argument1 + 3'
		to:
'methodWithOneArgument: argument1
	<layer: #bpInstrumented>
	| temp1 |
(self bpTrace: [argument1] forProbe: 1 inContext: thisContext).
^ argument1 + 3'