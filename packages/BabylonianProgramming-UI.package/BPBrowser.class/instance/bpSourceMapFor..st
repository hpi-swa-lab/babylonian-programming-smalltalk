private
bpSourceMapFor: aText 
	
	| cst |
	cst := (OhmExplicitSendsSmalltalk new match: aText startingFrom: #MethodDeclaration) cst.
	^ (OhmExplicitSendsSmalltalk semanticAction: BPSourceMapping new) createSourceMapFor: cst