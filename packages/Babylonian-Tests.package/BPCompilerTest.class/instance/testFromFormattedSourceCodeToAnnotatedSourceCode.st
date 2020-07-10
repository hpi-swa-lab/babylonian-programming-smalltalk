tests
testFromFormattedSourceCodeToAnnotatedSourceCode

	| text |
	self fail.
	text := 'simpleMethodWithProbes
	^ 2 + 3' asText.
	text 
		addAttribute: (nil) 
		from: 27 to: 31.
		
	BPCompiler compile: text. "TODO: Better word for that."