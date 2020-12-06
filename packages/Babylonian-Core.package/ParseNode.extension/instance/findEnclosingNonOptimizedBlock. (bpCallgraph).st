*Babylonian-Core-Callgraph-ByteCode
findEnclosingNonOptimizedBlock: encoder

	<layer: #bpCallgraph>
	| node |
	self class == VariableNode 
		ifTrue: [| ctx |
			"ugly hack for VariableNodes. VariableNodes like self, super, ..., all use the same instance! See VariableNode class >> #initialize (NodeNil, NodeTrue, ...). We need to manually find its parent node by traversing the context. Watchout: Encoders also inherit from ParseNode!"
			ctx := thisContext.
			[node isNil] whileTrue: [
				ctx := ctx sender.
				((ctx receiver isKindOf: ParseNode) and: [(ctx receiver isKindOf: VariableNode) not] and: [(ctx receiver isKindOf: Encoder) not]) ifTrue: [
					node := ctx receiver]]]
		ifFalse: [node := self].
	^ BPByteCodeParseNodeVisitor new findNode: node in: encoder rootNode