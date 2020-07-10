extracting
extractFrom: aNode

	collectAnnotation ifTrue: [^ {aNode interval contents}].
	^ #()