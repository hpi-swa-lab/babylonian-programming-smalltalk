private
bpSourceMapFor: aText 
	
	| cst |
	cst := (PEGParserOhmExplicitSendsSmalltalk new match: aText startingFrom: #MethodDeclaration) cst.
	^ (OhmExplicitSendsSmalltalk semanticAction: BPSourceMapping new) createSourceMapFor: cst