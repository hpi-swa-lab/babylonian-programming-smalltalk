tests
testRewritingSimpleExpressionProbe

	self 
		assertCompilerRewrites: 
'method
	"<bpProbe id: 1>"2 + 3"</bpProbe>"'
		to:
'method
<layer: #bpInstrumented>

(self bpTrace: (2 + 3) forProbe: 1 inContext: thisContext)'