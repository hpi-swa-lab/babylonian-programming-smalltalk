tests
testRewritingIgnoresSliders

	self 
		assertCompilerRewrites: 
'method
	2 "<bpSlider>"+ 3"</bpSlider>"'
		to:
'method
	<layer: #bpInstrumented>
	self bpBlockEntered: thisContext.
2 + 3'