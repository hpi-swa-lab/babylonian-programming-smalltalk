private
parse: code
	
	^ PEGParserBPSmalltalk new
		match: code
		startingFrom: #MethodDeclaration