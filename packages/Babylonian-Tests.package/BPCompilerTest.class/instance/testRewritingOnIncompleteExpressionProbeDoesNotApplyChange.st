tests
testRewritingOnIncompleteExpressionProbeDoesNotApplyChange

	| text |
	text := 'simpleMethodWithProbes
	^ 2 "<bpProbe id: 123>"+"</bpProbe>" 3'.
	self assert: nil equals: (BPCompiler compile: text).