accessing
Literal: aNode with: content

	^ content ruleName = #BlockLiteral 
		ifTrue: [aNode interval contents]
		ifFalse: [Compiler evaluate: aNode interval contents]