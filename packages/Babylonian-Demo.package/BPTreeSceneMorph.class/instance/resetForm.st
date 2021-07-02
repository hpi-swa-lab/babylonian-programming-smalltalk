private
resetForm
	<exampleNamed: 'custom scene' self: 'BPTreeSceneMorph new
	extent: 800@600;
	tree: (BPTree new
		blossomColor: Color lightMagenta;
		yourself);
	sky: BPSky roseSky;
	yourself'>
	<exampleNamed: 'basic' setUp: 'ThreadSafeRandom value: (Random seed: 10).' self: 'BPTreeSceneMorph new
	extent: 800@600;
	yourself'>
	| canvas |
	super resetForm.
	
	self sceneParts do: [:part |
		canvas := cachedForm getCanvas.
		part drawOn: canvas. 
		"<bpProbe id: 4109825 expression: [:result | result form]>"canvas"</bpProbe>" flush].
	
	^ "<bpProbe id: 9184282>"cachedForm"</bpProbe>"