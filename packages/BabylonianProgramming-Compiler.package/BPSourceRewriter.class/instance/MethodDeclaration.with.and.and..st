grammar rules
MethodDeclaration: aNode with: header and: pragmas and: code

	self assert: currentAnnotation isNil description: 'The rewriter is not thread-safe!'. 
	^ super MethodDeclaration: aNode with: header and: pragmas and: code