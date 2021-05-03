as yet unclassified
enclosedSourceCode
	
	"Copied from BPCallGraphPathPart"

	| action source annotation annotations |
	enclosedSourceCode ifNotNil: [^ enclosedSourceCode].
	
	action := BPSmalltalkGrammar semanticAction: BPExtractAnnotations new.
	source := self methodReference compiledMethod getSource asString.
	annotations := action value: (BPCompiler new parse: source).
	annotation := annotations detect: [:each | each id == self id] ifNone: [^ '???'].
	^ enclosedSourceCode := annotation enclosedExpressionSource