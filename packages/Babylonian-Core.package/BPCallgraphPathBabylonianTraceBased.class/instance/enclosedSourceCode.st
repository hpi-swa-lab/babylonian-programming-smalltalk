as yet unclassified
enclosedSourceCode
	
	"(self compiledMethod partialMethodFor: #bpInstrumented) decompileWithTemps nodesDo: [:node | 
	(node isMessageNode and: [
		(node selector key == #bpTrace:through:forProbe:inContext: and: [node arguments third key == 2193787])
		or: [node selector key == #bpTrace:forProbe:inContext: and: [node arguments second key == 2193787]]]) ifTrue: [node explore]]."

	| action source annotation annotations |
	enclosedSourceCode ifNotNil: [^ enclosedSourceCode].
	
	action := BPSmalltalkGrammar semanticAction: BPExtractAnnotations new.
	source := self methodReference compiledMethod getSource asString.
	annotations := action value: (BPCompiler new parse: source).
	annotation := annotations detect: [:each | each id == id] ifNone: [^ '???'].
	^ enclosedSourceCode := annotation enclosedExpressionSource