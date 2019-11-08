tests
testRewritingDoesNotAddTwoLayerPragmas
	"This is a regression test. The bug was caused by a naive try to replace substrings in the source."
	
	self 
		assertCompilerRewrites: 
'keyStroke: evt
	<exampleNamed: ''remove anchor'' active: true self: #anchoredMorphsInstance with: ''KeyboardEvent new''>                           
	  
	| view previousAnchors  |
	super keyStroke: evt.'
		to:
'keyStroke: evt
	<layer: #bpInstrumented>
	<exampleNamed: ''remove anchor'' active: true self: #anchoredMorphsInstance with: ''KeyboardEvent new''>                           
	  
	| view previousAnchors  |
	super keyStroke: evt.'