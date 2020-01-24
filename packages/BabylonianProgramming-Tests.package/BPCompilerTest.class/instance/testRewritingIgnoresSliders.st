tests
testRewritingIgnoresSliders

	self 
		assertCompilerRewrites: 
'method
	2 "<bpSlider>"+ 3"</bpSlider>"'
		to:
'method
	<layer: #bpInstrumented>
	2 + 3'