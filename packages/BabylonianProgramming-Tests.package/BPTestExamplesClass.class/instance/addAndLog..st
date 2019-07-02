example methods
addAndLog: aNumber
	<exampleNamed: 'small number' self: #one given: 20>
  <exampleNamed: 'large number' self: #one given: 94280292019202>
  | result |
  1 to: 10 do: [:i | result := self + aNumber].  
  Transcript showln: result.
  ^ result