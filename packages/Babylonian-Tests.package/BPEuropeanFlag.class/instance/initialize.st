initialization
initialize
	<testRef: 'BPEuropeanFlagTest>>#testOneExample'>
	| newStar |
	super initialize. 
	
	self color: "<bpProbe id: 8701453>"Color blue darker"</bpProbe>".
	
	"<bpProbe id: 2036079>"self 
		width: 500;
		height: 500"</bpProbe>".   
	
	"<bpProbe id: 9220558>"100 * 200 + 300"</bpProbe>".
	
	(1 to: 12) do: "<bpSlider id: 7763473>"[:i |
		"<bpAssert id: 7856079 for: 'all examples' that: [:result | result > 10]>"5 + i"</bpAssert>".
		
		newStar := "<bpProbe id: 67675>"BPEuropeanFlagStar new extent: 100@100; center: (250 + (i sin * 200))@(250 + (200*i cos))"</bpProbe>".
		"<bpProbe id: 1839861>"self addMorph: newStar"</bpProbe>"]"</bpSlider>".
	
	