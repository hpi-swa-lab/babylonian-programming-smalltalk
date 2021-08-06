regression tests
testRegressionOtherPointyBracketComments
	
	startRule := #MethodDeclaration.
	self shouldParse: 'keysAndValuesDo: aBlock
	1 to: self basicSize do: [:i |
		| propertyOrPragma "<Association|Pragma>" |
		2]'.