rules
Pragma: aNode with: literal with: values with: anotherLiteral
	
	|pragmaPrefixes exampleName|
	pragmaPrefixes := BPExample subclasses collect: [:aSubclass | aSubclass bpExamplePragmaPrefix asString, ':'].
	(pragmaPrefixes anySatisfy: [:prefix | values children first interval contents beginsWith: prefix]) ifTrue: [
		exampleName := self value: values children first children first.
		
		self flag: #todo. "As soon as script examples are supported by test serialization, delete condition. jb"
		(values children first interval contents beginsWith: BPMethodExample bpExamplePragmaPrefix)
			ifTrue: [exampleName := (BPDeserializer deserialize: (Compiler evaluate: exampleName)) exampleName].
			
		annotations add: (BPExampleAnnotation new
			exampleName: exampleName;
			enclosedExpressionSource: aNode interval contents;
			annotatedExpressionSourceCode: aNode interval contents;
			yourself) ].