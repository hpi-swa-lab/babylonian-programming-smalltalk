tests - annotations - sliders
testRewritingSimpleBlockSlider
	
	self 
		assertCompilerRewrites: 
'method
	#(a b c) do: "<bpSlider id: 1230123 interval: (1 to: 1)>"[:v | | c | 2 + 3]"</bpSlider>"'
		to:
'method
	<layer: #bpInstrumented>
	#(a b c) do: [:v | | c | self bpBlock: 1230123 enteredAt: thisContext.
2 + 3]'