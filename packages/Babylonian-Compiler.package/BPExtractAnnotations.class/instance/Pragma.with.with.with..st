rules
Pragma: aNode with: literal with: values with: anotherLiteral

	| exampleName |
	(values children first interval contents beginsWith: 'exampleNamed:') ifTrue: [
		exampleName := self value: values children first children first.
		annotations add: (BPExampleAnnotation new
			exampleName: exampleName;
			enclosedExpressionSource: aNode interval contents;
			annotatedExpressionSourceCode: aNode interval contents;
			yourself) ]