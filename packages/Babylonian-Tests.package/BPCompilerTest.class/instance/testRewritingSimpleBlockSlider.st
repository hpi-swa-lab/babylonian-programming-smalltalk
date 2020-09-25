tests - annotations - sliders
testRewritingSimpleBlockSlider
	
	"Sliders do not influence the instrumentation"
	self 
		assertCompilerRewrites: 
'method
	"<bpSlider interval: (1 to: 1)>"2 + 3"</bpSlider>"'
		to:
'method
	<layer: #bpInstrumented>
	self bpBlock: 1 enteredAt: thisContext.
self bpBlock: 1 leftWith: (2 + 3) at: thisContext'