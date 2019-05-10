grammar rules
MethodDeclaration: aNode with: header and: pragmas and: code

	self assert: currentAnnotation isNil description: 'The rewriter is not thread-safe!'. 
	^ (self defaultExpression: header) , String cr ,
		(self defaultExpression: pragmas) , String cr ,
		(self defaultExpression: code)