*Babylonian-Core
bpAsDictionary
	<exampleNamed: 'some example 69' self: 'Pragma keyword: #exampleNamed:self:tearDown:with:with arguments: #(''one'' #new #basicTearDown 100 200)'>
	| associations exampleArguments |
	associations := (self keyword findTokens: ':') 
		with: self arguments 
		collect: [:keyword :argument |
			keyword -> argument].
	"<bpProbe id: 9046306>"exampleArguments := associations 
		select: [:assoc | assoc key = #with]
		thenCollect: [:assoc | assoc value]"</bpProbe>".
	associations := associations reject: [:assoc | assoc key = #with].
	associations add: (#with -> exampleArguments asArray).
	^ Dictionary newFrom: "<bpProbe id: 8315258>"associations"</bpProbe>"
	