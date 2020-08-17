private
sourceMapNodeFor: aNode

	^ ohmNodeToSourceMapNode at: aNode ifAbsentPut: [
		BPSourceMapNode new
			ruleName: aNode ruleName;
			interval: (aNode interval start to: aNode interval end);
			parent: (aNode parent ifNotNil: ["nil is the root" 
						self sourceMapNodeFor: aNode parent])]