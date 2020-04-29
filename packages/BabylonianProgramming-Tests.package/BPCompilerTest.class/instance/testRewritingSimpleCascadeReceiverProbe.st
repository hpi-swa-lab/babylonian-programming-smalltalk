tests - annotations - cascades
testRewritingSimpleCascadeReceiverProbe

	self 
		assertCompilerRewrites: 
'method
	"<bpProbe id: 1>"2"</bpProbe>" negated; moreNegated'
		to:
'method
	<layer: #bpInstrumented>
	self bpBlock: 1 enteredAt: thisContext.
self bpBlock: 1 leftWith: ((self bpTrace: [2] forProbe: 1 inContext: thisContext) negated; moreNegated) at: thisContext'