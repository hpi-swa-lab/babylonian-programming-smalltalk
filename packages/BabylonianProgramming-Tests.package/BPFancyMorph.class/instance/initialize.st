as yet unclassified
initialize
	<layer: #bpInstrumented>
	<exampleNamed: 'fancy morph basic example' active: true self: #basicNew>

	super initialize.
	  
	(self bpTrace: [self color: Color blue darker] forProbe: 6630921 inContext: thisContext).
	
	(self bpTrace: [self width: 200] forProbe: 5521953 inContext: thisContext).
		
	(self bpTrace: [self height: 200] forProbe: 6810401 inContext: thisContext). 
	
	
	1 to: 50 do: [:i |
		(self bpAssertAfter: [10 + i] that: [:result | result < 50] forAssertion: 9409988 given: 'BPSearchCollection>>#binarySearch:>>#''basic''' inContext: thisContext).
		(self bpTrace: [self addMorph: (BPFancyStar new extent: 100@100; topLeft: (i sin * 10)@(10 + (5*i)))] forProbe: 5772977 inContext: thisContext)].
	
	