rules
Pragma: aNode with: literal with: values with: anotherLiteral
	
	| exampleName |
	
	(#('exampleNamed:' 'scriptExampleNamed:' 'extractedFromTestExampleNamed:' 'extractedFromClassExampleNamed:') anySatisfy: [:prefix | values children first interval contents beginsWith: prefix]) ifTrue: [
		exampleName := self value: values children first children first.
		annotations add: (BPExampleAnnotation new
			exampleName: exampleName;
			enclosedExpressionSource: aNode interval contents;
			annotatedExpressionSourceCode: aNode interval contents;
			yourself) ]