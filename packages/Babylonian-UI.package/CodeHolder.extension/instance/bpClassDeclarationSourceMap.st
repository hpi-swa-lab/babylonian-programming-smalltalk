*Babylonian-UI-private
bpClassDeclarationSourceMap

	| result map |
	result := BPSmalltalkGrammar 
		match: self contents
		startingFrom: #KeywordMessageSend.
	result succeeded ifFalse: [self haltOnce. ^ #()].
	map := (BPSmalltalkGrammar semanticAction: BPSourceMapping new) 
		createSourceMapFor: result cst.
	^ map