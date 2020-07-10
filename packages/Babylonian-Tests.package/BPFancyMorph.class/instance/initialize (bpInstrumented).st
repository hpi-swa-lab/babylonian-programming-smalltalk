as yet unclassified
initialize
	<layer: #bpInstrumented>
	<exampleNamed: 'fancy morph basic example' self: #basicNew>
      
	self bpBlock: 1 enteredAt: thisContext.
super initialize.
	   
	(self bpTrace: [self color: Color blue darker] forProbe: 6630921 inContext: thisContext).
	    
	(self bpTrace: [self width: 200] forProbe: 4593222 inContext: thisContext).
		
	(self bpTrace: [self height: 200] forProbe: 6810401 inContext: thisContext). 
	    
	
	self bpBlock: 1 leftWith: (1 to: 50 do: [:i |
		self bpBlock: 2 enteredAt: thisContext.
(self bpAssertAfter: [10 + i] that: [:result | result < 50] forAssertion: 9409988 given: 'BPFancyMorph>>#initialize>>#''fancy morph basic example''' inContext: thisContext).self bpBlock: 2 leftWith: ((self bpTrace: [self addMorph: (BPFancyStar new extent: 100@100; topLeft: (i sin * 10)@(10 + (50*i sin)))] forProbe: 5772977 inContext: thisContext)) at: thisContext]) at: thisContext.