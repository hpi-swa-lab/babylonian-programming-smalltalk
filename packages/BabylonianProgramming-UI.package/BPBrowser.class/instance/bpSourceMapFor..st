private
bpSourceMapFor: aText 
	
	| result |
	result := (OhmExplicitSendsSmalltalk match: aText startingFrom: #MethodDeclaration).
	result succeeded ifFalse: [self haltOnce. ^ #()].
	^ (OhmExplicitSendsSmalltalk semanticAction: BPSourceMapping new) createSourceMapFor: result cst