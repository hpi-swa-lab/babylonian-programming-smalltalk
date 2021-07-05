private
resetForm
	<exampleNamed: 'custom scene' self: 'BPTreeSceneMorph new
	extent: 800@600;
	tree: (BPTree new
		blossomColor: Color lightMagenta;
		yourself);
	sky: BPSky roseSky;
	yourself'>
	<exampleNamed: 'basic scene' self: 'BPTreeSceneMorph new
	extent: 800@600;
	yourself'>
	| canvas |
	super resetForm.
	
	self sceneParts do: [:part |
		canvas := cachedForm getCanvas.
		part drawOn: canvas. 
		canvas flush].
	
	^ cachedForm