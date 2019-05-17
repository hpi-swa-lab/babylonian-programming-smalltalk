example methods
addAndLog: aNumber
	<exampleNamed: 'small number' self: #one given: 20>
  <exampleNamed: 'large number' self: #one given: 94280292019202>
  | result |
  result := "<bpProbe>"self + aNumber"</bpProbe>".
  "<bpReplace with: nil>"Transcript showln: result"</bpReplace>".
  ^ "<bpAssert for: 'small number' that: [result = 21]>"result"</bpAssert>"