tests
testRegressionProbeAnnotation01

	startRule := #AnnotatedExpression.
	self shouldParse: '"<bpProbe id: 287>"2 + 3"</bpProbe>"'.

	startRule := #MethodDeclaration.
	self shouldParse: 'textAnchorIntervals
"<bpProbe id: 287>"2 + 3"</bpProbe>"'.

	startRule := #MethodDeclaration.
	self shouldParse: 'textAnchorIntervals
"<bpProbe id: 287>"runs"</bpProbe>" do: [:a | a + 2]'.

	