example methods
otherMethod
 
	| a m |
	a :=2 + 3.
	m := Morph new.
	1 to: 5 do: [:i |
		m addMorph: (EllipseMorph new 
			width: i;
			yourself).
		"<bpProbe id: 1865560>"1 + 1"</bpProbe>".]. 
	 ^ a 