tests - annotations - cascades
testRewritingSimpleCascadeKeywordMessageProbe

	self 
		assertCompilerRewrites: 
'method
	2 negated; "<bpProbe id: 1>"apply: 2 and: true"</bpProbe>"; moreNegated'
		to:
'method
	<layer: #bpInstrumented>
	self bpBlock: 1 enteredAt: thisContext.
self bpBlock: 1 leftWith: (2 negated; in: [:bpr | (self bpTrace: [bpr apply: 2 and: true] forProbe: 1 inContext: thisContext)]; moreNegated) at: thisContext'