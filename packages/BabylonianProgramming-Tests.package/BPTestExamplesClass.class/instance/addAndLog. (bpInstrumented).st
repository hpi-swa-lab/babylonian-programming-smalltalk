private
addAndLog: aNumber
<layer: #bpInstrumented>
< exampleNamed: 'small number' self: #one with: 20 > < exampleNamed: 'large number' self: #one with: 94280292019202 >
| result |  1 to: 100 do: [ :i | result := ( self bpTrace: [  self + aNumber ] forProbe: 3232 inContext: thisContext ) ].
 ^ result