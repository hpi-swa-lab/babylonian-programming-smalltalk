private
bpSourceMapFor: aText 
	
	| cst |
	cst := (OhmExplicitSendsSmalltalk match: aText startingFrom: #MethodDeclaration) cst.
	^ (OhmExplicitSendsSmalltalk semanticAction: BPSourceMapping new) createSourceMapFor: cst