private
resetForm
	<exampleNamed: 'basic' self: 'BPTreeSceneMorph new
	extent: 500@300; 
	yourself'>
	<exampleNamed: 'custom scene' self: 'BTreeSceneMorph new
	extent: 800@600; 
	tree: (BPTree new
		blossomColor: Color lightMagenta;
		yourself);
	sky: BPSky roseSky;
	yourself'>
	<exampleNamed: 'basic' setUp: 'ThreadSafeRandom value: (Random seed: 10).' self: 'BPTreeSceneMorph new
	extent: 500@300;
	yourself'>
	| canvas |
	super resetForm.
	
	self sceneParts do: [:part |
		canvas := cachedForm getCanvas.
		part drawOn: canvas.
		"<bpProbe id: 4905632 label: 'BPTreeSceneMorph>>rF-4905632'>"canvas"</bpProbe>" flush].
	
	^ "<bpProbe id: 8876984 label: 'BPTreeSceneMorph>>rF-8876984'>"cachedForm"</bpProbe>"
