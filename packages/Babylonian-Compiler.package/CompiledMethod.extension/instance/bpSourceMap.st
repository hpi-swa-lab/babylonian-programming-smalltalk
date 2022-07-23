*Babylonian-Compiler
bpSourceMap

	^ (self propertyValueAt: #bpSourceMap) ifNil: [
			| result map |
			result := BPSmalltalkGrammar 
				match: (BPStyler new selectedMethod: self methodReference; format: self getSource)
				startingFrom: #MethodDeclaration.
			result succeeded ifFalse: [self haltOnce. ^ #()].
			map := (BPSmalltalkGrammar semanticAction: BPSourceMapping new) 
				createSourceMapFor: result cst.
			self 
				propertyValueAt: #bpSourceMap 
				put: map]