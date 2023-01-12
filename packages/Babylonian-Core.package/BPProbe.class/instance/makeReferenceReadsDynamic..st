serialization
makeReferenceReadsDynamic: expression

	| rewriter ast | 
	rewriter := BPSmalltalkGrammar synthesizedAttribute: BPReferenceRewriter new.
	ast := PEGParserBPSmalltalk new
		match: expression
		startingFrom: #BlockLiteral.
	^ rewriter value: ast