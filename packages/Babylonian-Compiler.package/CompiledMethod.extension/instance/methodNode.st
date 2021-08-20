*Babylonian-Compiler
methodNode
	 
	"Return the parse tree that represents self. If parsing fails, decompile the method."
	| aClass source |
	aClass := self methodClass.
	source := self
				getSourceFor: (self selector ifNil: [self defaultSelector])
				in: aClass.
	
	"------- custom code ----------"
	"This breaks the contract, that the method node contains the nodes for 
	the unstyled code. Any use case, using the debugger map with unstyled code
	will break as a consequence (e.g. SmalltalkCI error reporting)."
	source := (BPStyler new
		selectedMethod: self methodReference;
		format:	source asText) asString asText.
	"------- end of custom code ----------"			
	
	^[(aClass newParser
		encoderClass: self encoderClass;
		parse: source class: aClass)
			sourceText: source;
			yourself]
		on: SyntaxErrorNotification
		do: [:ex | ex return: self decompileWithTemps]