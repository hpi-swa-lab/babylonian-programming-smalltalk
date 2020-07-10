asserting
assertCompilerRewrites: originalCode to: targetCode

	| resultingCode |
	resultingCode := compiler rewrite: originalCode.
	self assert: targetCode equals: resultingCode. 
	