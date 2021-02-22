*Babylonian-Compiler
bpSourceMap

	^ (self propertyValueAt: #bpSourceMap) ifNil: [
			| result map |
			result := OhmExplicitSendsSmalltalk 
				match: (BPStyler new selectedMethod: self methodReference; format: self getSource)
				startingFrom: #MethodDeclaration.
			result succeeded ifFalse: [self haltOnce. ^ #()].
			map := (OhmExplicitSendsSmalltalk semanticAction: BPSourceMapping new) 
				createSourceMapFor: result cst.
			self 
				propertyValueAt: #bpSourceMap 
				put: map]