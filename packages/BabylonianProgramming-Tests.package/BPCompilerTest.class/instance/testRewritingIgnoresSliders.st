tests
testRewritingIgnoresSliders

	self 
		assertCompilerRewrites: 
'method
	2 "<bpSlider>"+ 3"</bpSlider>"'
		to:
'method
	<layer: #bpInstrumented>
	self bpBlock: 1 enteredAt: thisContext.
self bpBlock: 1 leftWith: (2 + 3) at: thisContext'