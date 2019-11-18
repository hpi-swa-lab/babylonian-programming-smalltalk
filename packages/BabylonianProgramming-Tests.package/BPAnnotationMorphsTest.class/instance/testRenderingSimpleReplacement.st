tests
testRenderingSimpleReplacement

	| anchorAttribute renderedSource replacementMorph |
	replacementMorph := BPReplacement new
		replacementScript: '[100]';
		asMorph.
	anchorAttribute := BPTextAnchor new anchoredMorph: replacementMorph.
	source addAttribute: anchorAttribute from: expressionInterval start to: expressionInterval stop.
	
	renderedSource := source asBPSource.
	self assert: 'method
<exampleNamed: ''example 1''>
^ "<bpReplace for: ''all examples'' with: [100]>"2 + 3"</bpReplace>"' equals: renderedSource asString.