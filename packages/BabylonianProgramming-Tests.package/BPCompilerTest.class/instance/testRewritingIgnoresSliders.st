tests
testRewritingIgnoresSliders

	self 
		assertCompilerRewrites: 
'method
	2 + "<bpSlider>"[a + b]"</bpSlider>"'
		to:
'method
	<layer: #bpInstrumented>
	self bpBlock: 1 enteredAt: thisContext.
self bpBlock: 1 leftWith: (2 + [self bpBlock: 2 enteredAt: thisContext.
self bpBlock: 2 leftWith: (a + b) at: thisContext]) at: thisContext'