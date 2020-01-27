as yet unclassified
initialize
	<exampleNamed: 'fancy morph basic example' active: true self: #basicNew>

	super initialize.
	  
	"<bpProbe id: 6630921>"self color: Color blue darker"</bpProbe>".
	
	"<bpProbe id: 5521953>"self width: 200"</bpProbe>".
		
	"<bpProbe id: 6810401>"self height: 200"</bpProbe>". 
	
	
	1 to: 50 do: [:i |
		"<bpAssert id: 9409988 for: 'BPSearchCollection>>#binarySearch:>>#''basic''' that: [:result | result < 50]>"10 + i"</bpAssert>".
		"<bpProbe id: 5772977>"self addMorph: (BPFancyStar new extent: 100@100; topLeft: (i sin * 10)@(10 + (5*i)))"</bpProbe>"].
	
	