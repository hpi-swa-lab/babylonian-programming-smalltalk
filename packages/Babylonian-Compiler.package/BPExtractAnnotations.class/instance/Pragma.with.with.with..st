rules
Pragma: aNode with: literal with: values with: anotherLiteral
	
	| testRef pragmaPrefixes|
	pragmaPrefixes := BPExample subclasses collect: [:aSubclass | aSubclass bpExamplePragmaPrefix asString, ':'].
	(pragmaPrefixes anySatisfy: [:prefix | values children first interval contents beginsWith: prefix]) ifTrue: [
		testRef := self value: values children first children first.
		annotations add: (BPExampleAnnotation new
			exampleName: (BPDeserializer deserialize: (Compiler evaluate: testRef)) exampleName;
			enclosedExpressionSource: aNode interval contents;
			annotatedExpressionSourceCode: aNode interval contents;
			yourself) ].