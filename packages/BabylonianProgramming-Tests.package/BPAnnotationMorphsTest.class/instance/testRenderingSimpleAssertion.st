tests
testRenderingSimpleAssertion

	| anchorAttribute renderedSource assertionMorph |
	assertionMorph := BPAssertion new
		id: 1;
		assertion: '[:r | r = 5]';
		asMorph.
	anchorAttribute := BPTextAnchor new anchoredMorph: assertionMorph.
	source addAttribute: anchorAttribute from: expressionInterval start to: expressionInterval stop.
	
	renderedSource := source asBPSource.
	self assert: 'method
<exampleNamed: ''example 1''>
^ "<bpAssert id: 1 for: ''all examples'' that: [:r | r = 5]>"2 + 3"</bpAssert>"' equals: renderedSource asString.