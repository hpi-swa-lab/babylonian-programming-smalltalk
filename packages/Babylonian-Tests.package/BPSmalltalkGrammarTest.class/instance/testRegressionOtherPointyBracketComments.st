regression tests
testRegressionOtherPointyBracketComments
	
	startRule := #MethodDeclaration.
	self shouldParse: 'keysAndValuesDo: aBlock
	1 to: self basicSize do: [:i |
		| propertyOrPragma "<Association|Pragma>" |
		2]'.
	
	self shouldParse: 'startTag
		^ ''"<bpAnnotation id: {1} expression: [{2}]>"'' format: {self id. self expression}'