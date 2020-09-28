tests - annotations - sliders
testRewritingNestedBlockSlider
	<exampleNamed: 'some example 92' active: true self: '(BPCompilerTest run: #testRewritingNestedBlockSlider)'>
	self 
		assertCompilerRewrites: 
'method
	#(a b c) do: "<bpSlider id: 123123 interval: (1 to: 1)>"[:v | | c | 
		#(1 2 3) select: "<bpSlider id: 111111 interval: (1 to: 1)>"[:x | x > 2]"</bpSlider>"]"</bpSlider>"'
		to:
'method
	<layer: #bpInstrumented>
	#(a b c) do: [:v | | c | self bpBlock: 123123 enteredAt: thisContext.
#(1 2 3) select: [:x | self bpBlock: 111111 enteredAt: thisContext.
x > 2]]'