tests - annotations - sliders
testRewritingNestedBlockAndMethodSlider
	<exampleNamed: 'some example 38' self: '(BPCompilerTest run: #testRewritingNestedBlockAndMethodSlider)'>
	self 
		assertCompilerRewrites: 
'method
	"<bpSlider id: 123123 interval: (1 to: 1)>"#(a b c) do: [:v | | c | 
		#(1 2 3) select: "<bpSlider id: 111111 interval: (1 to: 1)>"[:x | x > 2]"</bpSlider>"]"</bpSlider>"'
		to:
'method
	<layer: #bpInstrumented>
	self bpBlock: 123123 enteredAt: thisContext.
	#(a b c) do: [:v | | c | 
		#(1 2 3) select: [:x | self bpBlock: 111111 enteredAt: thisContext.
x > 2]]'