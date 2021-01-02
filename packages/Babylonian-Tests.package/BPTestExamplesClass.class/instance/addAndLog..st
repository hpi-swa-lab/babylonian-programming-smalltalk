private
addAndLog: aNumber
	<exampleNamed: 'small number' expectedResult: '21' active: true self: #one with: 20>
	<exampleNamed: 'large number' expectedResult: nil self: #one with: 94280292019202>
| result |  1 to: 100 do: [ :i | result := (self bpTrace: [self + aNumber] forProbe: 3232 inContext: thisContext) ].
"Transcript showln: result."
 ^ result