tests - annotations - sliders
testRewritingSimpleMethodSlider
	<exampleNamed: 'some example 22' self: '(BPCompilerTest run: #testRewritingSimpleMethodSlider)'>
	"Sliders do not influence the instrumentation"
	self 
		assertCompilerRewrites: 
'method
	"<bpSlider id: 1230123 interval: (1 to: 1)>"2 + 3"</bpSlider>"'
		to:
'method
	<layer: #bpInstrumented>
	self bpBlock: 1230123 enteredAt: thisContext.
	2 + 3'.