private
resetForm
	<exampleNamed: 'basic' setUp: 'ThreadSafeRandom value: (Random seed: 10).' self: 'BPTreeSceneMorph new
	extent: 500@300;
	yourself'>
	<exampleNamed: 'custom scene' self: 'BPTreeSceneMorph new
	extent: 800@600;
	tree: (BPTree new
		blossomColor: Color lightMagenta;
		yourself);
	sky: BPSky roseSky;
	yourself'>
	| canvas |
	super resetForm.
	
	self sceneParts do: [:part |
		canvas := cachedForm getCanvas.
		"<bpAssert id: 4608059 for: 'all examples' that: [:result | result class = BPTree]>"part"</bpAssert>" drawOn: canvas.
		canvas flush].
	
	^ cachedForm