grammar rules
Expression: aNode with: x

	collectAnnotation ifTrue: [^ {aNode interval contents}].
	^ #()