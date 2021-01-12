private
rewriter

	^ rewriter ifNil: [
		rewriter := BPSmalltalkGrammar synthesizedAttribute: BPSourceRewriter new]