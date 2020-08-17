rules
MethodDeclaration: aNode with: header and: pragmas and: code

	| resultingAnnotations |
	self assert: annotations isNil description: 'The extract annotations attribute is not thread-safe!'. 
	annotations := OrderedCollection new.
	self 
		value: pragmas;
		value: code.
	resultingAnnotations := annotations.
	annotations := nil.
	^ resultingAnnotations