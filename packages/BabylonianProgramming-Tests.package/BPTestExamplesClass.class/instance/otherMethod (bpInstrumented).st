as yet unclassified
otherMethod
	<layer: #bpInstrumented>
 
	| a m |
	a :=2 + 3.
	m := Morph new.
	1 to: 5 do: [:i |
		m addMorph: (EllipseMorph new 
			width: i;
			yourself).
		(self bpTrace: [1 + 1] forProbe: 1865560 inContext: thisContext).]. 
	 ^ a 