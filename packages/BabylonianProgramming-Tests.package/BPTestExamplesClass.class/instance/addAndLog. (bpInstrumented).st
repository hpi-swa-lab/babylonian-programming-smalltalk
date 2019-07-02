as yet unclassified
addAndLog: aNumber
<layer: #bpInstrumented>
< exampleNamed: 'small number' self: #one given: 20 > < exampleNamed: 'large number' self: #one given: 94280292019202 >
| result |  1 to: 10 do: [ :i | result := (self bpTrace: (self + aNumber) forProbe: 3232 inContext: thisContext) ].
Transcript showln: result.
 ^ result