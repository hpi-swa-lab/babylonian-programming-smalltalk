example methods
addAndLog: b
	<exampleNamed: 'some example' self: #one given: 20>
	<exampleNamed: 'another example' self: #one given: 22>
	| result |
	result := "<bpProbe>"self + b"</bpProbe>".
	"<bpReplace>"Transcript showln: result"</bpReplace>".
	^ "<bpAssert for: 'some example' that: [result = 21]>"result"</bpAssert>"