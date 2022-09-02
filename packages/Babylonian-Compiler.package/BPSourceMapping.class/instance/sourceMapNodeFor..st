private
sourceMapNodeFor: aNode

	^ ohmNodeToSourceMapNode at: aNode ifAbsent: [ | newMapNode |
		newMapNode := (BPSourceMapNode new
			ruleName: aNode ruleName;
			interval: (aNode interval start to: aNode interval end);
			parent: (aNode parent ifNotNil: ["nil is the root" self sourceMapNodeFor: aNode parent])
			yourself).
		ohmNodeToSourceMapNode at: aNode put: newMapNode.
		aNode ruleName = #'_terminal' ifFalse: [
			newMapNode children: (aNode children collect: [:child | self sourceMapNodeFor: child])].
		newMapNode]