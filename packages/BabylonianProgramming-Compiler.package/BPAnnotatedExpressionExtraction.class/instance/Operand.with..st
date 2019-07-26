grammar rules
Operand: aNode with: x

	collectAnnotation ifTrue: [^ {aNode interval contents}].
	^ #()